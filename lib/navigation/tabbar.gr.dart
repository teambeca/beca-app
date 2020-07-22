// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/main/leader_board.dart';
import '../pages/main/play.dart';
import '../pages/main/profile.dart';
import '../pages/main/settings.dart';

class TabbarRoutes {
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

class TabbarRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(TabbarRoutes.leaderBoardPage, page: LeaderBoardPage),
    RouteDef(TabbarRoutes.playPage, page: PlayPage),
    RouteDef(TabbarRoutes.profilePage, page: ProfilePage),
    RouteDef(TabbarRoutes.settingsPage, page: SettingsPage),
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
