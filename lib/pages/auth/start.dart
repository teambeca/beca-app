import 'package:auto_route/auto_route.dart';
import 'package:beca_app/bloc/auth_bloc.dart';
import 'package:beca_app/common_widgets/MyLogo.dart';
import 'package:beca_app/navigation/auth.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(40),
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: MyLogo()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  onPressed: () {
                    ExtendedNavigator.root.replace(AuthRoutes.loginPage);
                  },
                  child: Text("SIGN IN"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  onPressed: () {
                    ExtendedNavigator.root.replace(AuthRoutes.registerPage);
                  },
                  child: Text("SIGN UP"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'OR',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: OutlineButton(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context).add(
                        AuthLogInRequest(username: "asd", password: "asda"));
                  },
                  child: Text("CONTINUE ANONYMOUS"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
