import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistenlogin/app/data/db/db.dart';

import '../../initial/cubit/initial_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(DB.instance.auth.getAt(0)?.user?.email ?? 'Belum login'),
            ElevatedButton(
              onPressed: () {
                DB.instance.auth.putAt(
                    0, DB.instance.auth.getAt(0)!.copyWith(isLoggedIn: false));
                context.read<InitialCubit>().checkCredentials();
              },
              child: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
