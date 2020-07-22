import 'package:auto_route/auto_route_annotations.dart';
import 'package:beca_app/pages/auth/login.dart';
import 'package:beca_app/pages/auth/register.dart';
import 'package:beca_app/pages/auth/start.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: StartPage, initial: true),
    MaterialRoute(page: LoginPage),
    MaterialRoute(page: RegisterPage),
  ],
  routesClassName: "AuthRoutes",
)
class $AuthRouter {}
