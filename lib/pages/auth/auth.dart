import 'package:auto_route/auto_route.dart';
import 'package:beca_app/main.dart';
import 'package:beca_app/navigation/auth.gr.dart';
import 'package:flutter/material.dart';

class AuthPagesStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExtendedNavigator(
        key: homeExNavigatorKey,
        router: AuthRouter(),
        name: "auth",
      ),
    );
  }
}
