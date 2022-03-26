import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(false) bool loginSucceed,
    @Default('') String message,
  }) = _LoginState;
}
