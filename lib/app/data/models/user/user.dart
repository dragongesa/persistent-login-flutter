import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@HiveType(typeId: 0)
class User with _$User {
  const User._();
  const factory User({
    @HiveField(0) String? id,
    @HiveField(1) String? name,
    @HiveField(2) String? email,
    @HiveField(3) String? password,
    @HiveField(4) String? token,
  }) = _User;
}
