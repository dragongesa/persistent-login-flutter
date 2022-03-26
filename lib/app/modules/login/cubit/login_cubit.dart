import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistenlogin/app/data/db/db.dart';
import 'package:persistenlogin/app/data/models/auth/auth.dart';
import 'package:persistenlogin/app/data/models/user/user.dart';

import 'login_state.dart';
export 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  login() async {
    User user = const User(
      email: 'email@kamu.cantik',
      id: 'ashda87sd8',
      name: 'Nama Kamu',
      password: 'password',
      token: 'token',
    );
    if (DB.instance.auth.values.isEmpty) {
      await DB.instance.auth.add(Auth(isLoggedIn: true, user: user));
    } else {
      await DB.instance.auth.putAt(0, Auth(isLoggedIn: true, user: user));
    }
    emit(state.copyWith(loginSucceed: true));
  }
}
