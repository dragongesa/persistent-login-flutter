import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:persistenlogin/app/data/models/auth/auth.dart';
import 'package:persistenlogin/app/data/models/user/user.dart';
import 'package:persistenlogin/app/modules/initial/cubit/initial_cubit.dart';
import 'package:persistenlogin/router/router.dart';

main() {
  init().then((value) {
    runApp(MyApp());
  });
}

Future init() async {
  WidgetsFlutterBinding.ensureInitialized();
  Uint8List key = await getEncryptionKey();
  await Hive.initFlutter();
  Hive.registerAdapter(AuthAdapter());
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<Auth>('auth', encryptionCipher: HiveAesCipher(key));
  await Hive.openBox<User>('user', encryptionCipher: HiveAesCipher(key));
}

Future<Uint8List> getEncryptionKey() async {
  final FlutterSecureStorage secureStorage = FlutterSecureStorage();
  if ((await secureStorage.containsKey(key: 'encryptKey'))) {
    var rawKey = await secureStorage.read(key: 'encryptKey');
    var key = base64Decode(rawKey!);
    return key;
  }
  await secureStorage.write(
      key: 'encryptKey', value: base64Encode(Hive.generateSecureKey()));
  return await getEncryptionKey();
}

var router = AppRouter();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final InitialCubit cubit = InitialCubit();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: MaterialApp.router(
        routeInformationParser: router.defaultRouteParser(),
        routerDelegate: router.delegate(),
        builder: (context, child) => BlocListener<InitialCubit, InitialState>(
          // listenWhen: (previous, current) =>
          //     previous.isLoggedIn != current.isLoggedIn,
          listener: (context, state) {
            if (state.isLoggedIn) {
              router.popUntilRoot();
              router.replace(const HomeRoute());
            } else {
              router.popUntilRoot();
              router.replace(const LoginRoute());
            }
          },
          child: child,
        ),
      ),
    );
  }
}
