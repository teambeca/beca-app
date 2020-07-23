import 'package:auto_route/auto_route_annotations.dart';
import 'package:beca_app/pages/auth/sign_in.dart';
import 'package:beca_app/pages/auth/sign_up.dart';
import 'package:beca_app/pages/auth/start.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: StartPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SignUpPage),
  ],
  routesClassName: "AuthRoutes",
)
class $AuthRouter {}
