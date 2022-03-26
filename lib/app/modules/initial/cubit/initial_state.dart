import 'package:freezed_annotation/freezed_annotation.dart';
part 'initial_state.freezed.dart';

@freezed
class InitialState with _$InitialState {
  const InitialState._();
  const factory InitialState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String message,
    @Default(false) bool isLoggedIn,
  }) = _InitialState;
}
