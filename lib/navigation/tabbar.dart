import 'package:auto_route/auto_route_annotations.dart';
import 'package:beca_app/pages/main/leader_board.dart';
import 'package:beca_app/pages/main/play.dart';
import 'package:beca_app/pages/main/profile.dart';
import 'package:beca_app/pages/main/settings.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: LeaderBoardPage, initial: true),
    MaterialRoute(page: PlayPage),
    MaterialRoute(page: ProfilePage),
    MaterialRoute(page: SettingsPage),
  ],
  routesClassName: "TabbarRoutes",
)
class $TabbarRouter {}
