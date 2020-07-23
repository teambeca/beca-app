import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp Page"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('Not Implemented'),
                duration: Duration(seconds: 1),
              ));
            },
            child: Text("Go to SignIn"),
          ),
        ),
      ),
    );
  }
}
