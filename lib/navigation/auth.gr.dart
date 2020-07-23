// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/auth/sign_in.dart';
import '../pages/auth/sign_up.dart';
import '../pages/auth/start.dart';

class AuthRoutes {
  static const String startPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const all = <String>{
    startPage,
    signInPage,
    signUpPage,
  };
}

class AuthRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(AuthRoutes.startPage, page: StartPage),
    RouteDef(AuthRoutes.signInPage, page: SignInPage),
    RouteDef(AuthRoutes.signUpPage, page: SignUpPage),
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
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    SignUpPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(),
        settings: data,
      );
    },
  };
}
