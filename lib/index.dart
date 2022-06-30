import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:predictandwin/_router/router.dart';
import 'package:predictandwin/app_controller/authentication/bloc/authentication_bloc.dart';
import 'package:predictandwin/data_layer/repositories/authentication_repository.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
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
