import 'package:auto_route/auto_route.dart';
import 'package:beca_app/navigation/main.gr.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              ExtendedNavigator.root.replace(Routes.loginPage);
            },
            child: Text("Go to Login"),
          ),
        ),
      ),
    );
  }
}
