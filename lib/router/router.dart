import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:persistenlogin/app/modules/home/view/home_view.dart';
import 'package:persistenlogin/app/modules/initial/view/initial_view.dart';
import 'package:persistenlogin/app/modules/login/view/login_view.dart';
export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: InitialView,
      initial: true,
      path: '/',
    ),
    AutoRoute(
      page: LoginView,
      path: '/login',
    ),
    AutoRoute(
      page: HomeView,
      path: '/home',
    ),
  ],
)
class $AppRouter {}
