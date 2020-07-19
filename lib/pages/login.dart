import 'package:auto_route/auto_route.dart';
import 'package:beca_app/navigation/main.gr.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  ExtendedNavigator.root.replace(Routes.registerPage);
                },
                child: Text("Go to Register"),
              ),
              RaisedButton(
                onPressed: () {
                  ExtendedNavigator.root.replace(Routes.homePage);
                },
                child: Text("Go to Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
