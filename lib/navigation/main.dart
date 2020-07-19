import 'package:auto_route/auto_route_annotations.dart';
import 'package:beca_app/pages/home.dart';
import 'package:beca_app/pages/leader_board.dart';
import 'package:beca_app/pages/login.dart';
import 'package:beca_app/pages/play.dart';
import 'package:beca_app/pages/profile.dart';
import 'package:beca_app/pages/register.dart';
import 'package:beca_app/pages/settings.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: LoginPage, initial: true),
    MaterialRoute(page: RegisterPage),
    MaterialRoute(
      page: HomePage,
      children: <AutoRoute>[
        MaterialRoute(page: LeaderBoardPage, initial: true),
        MaterialRoute(page: PlayPage),
        MaterialRoute(page: ProfilePage),
        MaterialRoute(page: SettingsPage),
      ],
    ),
  ],
)
class $Router {}
