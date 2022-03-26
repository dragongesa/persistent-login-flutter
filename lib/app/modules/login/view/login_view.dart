import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistenlogin/app/modules/initial/cubit/initial_cubit.dart';
import 'package:persistenlogin/app/modules/login/cubit/login_cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginCubit cubit = LoginCubit();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => cubit,
      child: BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state.loginSucceed) {
              context.read<InitialCubit>().checkCredentials();
            }
          },
          child: Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () async {
                  await cubit.login();
                },
                child: Text('LOGIINNNNN'),
              ),
            ),
          )),
    );
  }
}
