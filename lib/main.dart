import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:predictandwin/_router/router.dart';
import 'package:predictandwin/app_controller/bloc_observer.dart';
import 'package:predictandwin/app_controller/logics/lottery/bloc/lottery_bloc.dart';
import 'package:predictandwin/app_controller/logics/predictions/bloc/predictions_bloc.dart';
import 'package:predictandwin/data_layer/repositories/authentication_repository.dart';
import 'package:predictandwin/data_layer/repositories/lottery/lottery_repository.dart';
import 'package:predictandwin/data_layer/repositories/predictions/prediction_repository.dart';
import 'package:predictandwin/data_layer/repositories/user_repository.dart';
import 'app_controller/authentication/bloc/authentication_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  BlocOverrides.runZoned(
    () {
      runApp(const App());
    },
    blocObserver: SimpleBlocObserver(),
  );
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthenticationBloc(
              authenticationRepository: AuthenticationRepository(),
              userRepository: UserRepository()),
        ),
        BlocProvider(
          create: (_) =>
              PredictionsBloc(PredictionRepository())..add(LoadPredictions()),
        ),
        BlocProvider(
          create: (_) => LotteryBloc(LotteryRepository())..add(LoadLottery()),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      builder: (context, child) {
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            switch (state.status) {
              case AuthenticationStatus.authenticated:
                _navigator.pushReplacementNamed(bottomNavigationRoute);
                break;
              case AuthenticationStatus.unauthenticated:
                _navigator.pushReplacementNamed(loginPageRoute);
                break;
              case AuthenticationStatus.unknown:
                _navigator.pushReplacementNamed(loginPageRoute);
                break;
              default:
                break;
            }
          },
          child: child,
        );
      },
      initialRoute: loginPageRoute,
      onGenerateRoute: AppRoute.generateRoute,
    );
  }
}
