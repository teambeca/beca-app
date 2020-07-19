// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/leader_board.dart';
import '../pages/login.dart';
import '../pages/play.dart';
import '../pages/profile.dart';
import '../pages/register.dart';
import '../pages/settings.dart';

class Routes {
  static const String loginPage = '/';
  static const String registerPage = '/register-page';
  static const String homePage = '/home-page';
  static const all = <String>{
    loginPage,
    registerPage,
    homePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.registerPage, page: RegisterPage),
    RouteDef(
      Routes.homePage,
      page: HomePage,
      generator: HomePageRouter(),
    ),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
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
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
  };
}

class HomePageRoutes {
  static const String leaderBoardPage = '/';
  static const String playPage = '/play-page';
  static const String profilePage = '/profile-page';
  static const String settingsPage = '/settings-page';
  static const all = <String>{
    leaderBoardPage,
    playPage,
    profilePage,
    settingsPage,
  };
}

class HomePageRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(HomePageRoutes.leaderBoardPage, page: LeaderBoardPage),
    RouteDef(HomePageRoutes.playPage, page: PlayPage),
    RouteDef(HomePageRoutes.profilePage, page: ProfilePage),
    RouteDef(HomePageRoutes.settingsPage, page: SettingsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LeaderBoardPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LeaderBoardPage(),
        settings: data,
      );
    },
    PlayPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PlayPage(),
        settings: data,
      );
    },
    ProfilePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfilePage(),
        settings: data,
      );
    },
    SettingsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingsPage(),
        settings: data,
      );
    },
  };
}
