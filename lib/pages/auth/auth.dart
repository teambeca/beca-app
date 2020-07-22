import 'package:auto_route/auto_route.dart';
import 'package:beca_app/main.dart';
import 'package:beca_app/navigation/auth.gr.dart';
import 'package:flutter/material.dart';

class AuthPagesStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await homeExNavigatorKey.currentState.maybePop(),
      child: Scaffold(
        body: ExtendedNavigator(
          key: tabbarExNavigatorKey,
          router: AuthRouter(),
          name: "auth",
        ),
      ),
    );
  }
}
