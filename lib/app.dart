import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:predictandwin/app_controller/authentication/bloc/authentication_bloc.dart';
import 'package:predictandwin/app_controller/logics/lottery/bloc/lottery_bloc.dart';
import 'package:predictandwin/app_controller/logics/predictions/bloc/predictions_bloc.dart';
import 'package:predictandwin/data_layer/repositories/authentication_repository.dart';
import 'package:predictandwin/data_layer/repositories/lottery/lottery_repository.dart';
import 'package:predictandwin/data_layer/repositories/predictions/prediction_repository.dart';
import 'package:predictandwin/data_layer/repositories/user_repository.dart';
import 'package:predictandwin/index.dart';

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
      child: const IndexPage(),
    );
  }
}
