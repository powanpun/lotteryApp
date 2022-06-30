import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:predictandwin/app_controller/authentication/bloc/authentication_bloc.dart';
import 'package:predictandwin/global_widget/buttons/facebook_button.dart';
import 'package:predictandwin/global_widget/buttons/google_button.dart';
import 'package:predictandwin/utils/custome_sized_box.dart';
import 'package:predictandwin/utils/padding.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late GoogleSignInAccount? user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return Padding(
          padding: padding16x32(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  context
                      .read<AuthenticationBloc>()
                      .add(GoogleSignInRequested());
                },
                child: const GoogleButton(),
              ),
              customSizedBoxh8(),
              InkWell(
                onTap: () {},
                child: const FacebookButton(),
              ),
            ],
          ),
        );
      },
    ));
  }
}
