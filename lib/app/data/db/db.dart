import 'package:hive/hive.dart';
import 'package:persistenlogin/app/data/models/auth/auth.dart';
import 'package:persistenlogin/app/data/models/user/user.dart';

class DB {
  static DB instance = DB();
  final auth = Hive.box<Auth>('auth');
  final user = Hive.box<User>('user');
}
