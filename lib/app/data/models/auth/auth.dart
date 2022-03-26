import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:persistenlogin/app/data/models/user/user.dart';
part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
@HiveType(typeId: 1)
class Auth with _$Auth {
  const Auth._();
  const factory Auth({
    @Default(false) @HiveField(0) bool isLoggedIn,
    @HiveField(1) User? user,
  }) = _Auth;
}
