import 'package:beca_app/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).primaryColorLight,
        title: Text("Sign In"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: SizedBox()),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _usernameController,
              validator: (value) {
                if (value.isEmpty) return 'Please enter some text';
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _passwordController,
              validator: (value) {
                if (value.isEmpty) return 'Please enter some text';
                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
            child: SizedBox(
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 20),
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    String username = _usernameController.text;
                    String password = _passwordController.text;
                    BlocProvider.of<AuthBloc>(context).add(AuthLogInRequest(
                        username: username, password: password));
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
