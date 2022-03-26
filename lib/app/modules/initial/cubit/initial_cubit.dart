import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistenlogin/app/data/db/db.dart';
import 'package:persistenlogin/app/data/models/auth/auth.dart';
import 'initial_state.dart';
export 'initial_state.dart';

class InitialCubit extends Cubit<InitialState> {
  InitialCubit() : super(const InitialState());

  /// checking credentials
  checkCredentials() async {
    bool isFirstBukaAplikasi = DB.instance.auth.values.isEmpty;

    /// Jika user pertama kali buka aplikasi
    if (isFirstBukaAplikasi) {
      emit(state.copyWith(isLoggedIn: false));
      return;
    }

    /// Jika belum login
    Auth auth = DB.instance.auth.getAt(0)!;
    emit(state.copyWith(isLoggedIn: auth.isLoggedIn));
    return;
  }
}
