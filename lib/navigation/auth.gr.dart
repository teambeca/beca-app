// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/auth/login.dart';
import '../pages/auth/register.dart';
import '../pages/auth/start.dart';

class AuthRoutes {
  static const String startPage = '/';
  static const String loginPage = '/login-page';
  static const String registerPage = '/register-page';
  static const all = <String>{
    startPage,
    loginPage,
    registerPage,
  };
}

class AuthRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(AuthRoutes.startPage, page: StartPage),
    RouteDef(AuthRoutes.loginPage, page: LoginPage),
    RouteDef(AuthRoutes.registerPage, page: RegisterPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartPage(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    RegisterPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterPage(),
        settings: data,
      );
    },
  };
}
