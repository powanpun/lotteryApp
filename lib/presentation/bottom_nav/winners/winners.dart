import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:predictandwin/app_controller/authentication/bloc/authentication_bloc.dart';

class WinnersPage extends StatefulWidget {
  const WinnersPage({Key? key}) : super(key: key);

  @override
  State<WinnersPage> createState() => _WinnersPageState();
}

class _WinnersPageState extends State<WinnersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: InkWell(
      onTap: () {
        context.read<AuthenticationBloc>().add(AuthenticationLogoutRequested());
      },
      child: const Text("winners page"),
    )));
  }
}
