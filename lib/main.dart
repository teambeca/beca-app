import 'package:auto_route/auto_route.dart';
import 'package:beca_app/pages/auth/auth.dart';
import 'package:beca_app/pages/main/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/auth_bloc.dart';
import 'pages/splash.dart';
import 'repository/auth_repo.dart';

final homeExNavigatorKey = GlobalKey<ExtendedNavigatorState>();
final tabbarExNavigatorKey = GlobalKey<ExtendedNavigatorState>();

void main() {
  final authRepository = AuthRepository();
  runApp(
    BlocProvider<AuthBloc>(
      create: (context) =>
          AuthBloc(authRepository: authRepository)..add(AuthStarted()),
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color.fromARGB(255, 0, 188, 212),
      ),
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthInitial) {
            return SplashPage();
          }
          if (state is AuthSuccess) {
            return MainPagesTabbar();
          }
          if (state is AuthFailure) {
            return AuthPagesStack();
          }
          if (state is AuthInProgress) {
            return Scaffold(
              body: Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }

          return Scaffold(
            body: Container(
              child: Center(
                child: Text("Unknown Auth State"),
              ),
            ),
          );
        },
      ),
    );
  }
}
