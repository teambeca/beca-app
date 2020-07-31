import 'package:beca_app/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GİRİŞ YAP"),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SignInForm(),
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  SignInFormState createState() {
    return SignInFormState();
  }
}

class SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overScroll) {
          overScroll.disallowGlow();
          return false;
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _usernameController,
                  validator: (value) {
                    if (value.isEmpty) return 'Boş bırakmayınız';
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topRight: Radius.circular(4)),
                    ),
                    filled: true,
                    hintText: 'Kullanıcı adı',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  validator: (value) {
                    if (value.isEmpty) return 'Boş bırakmayınız';
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(4),
                      ),
                    ),
                    filled: true,
                    hintText: 'Şifre',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        String username = _usernameController.text;
                        String password = _passwordController.text;
                        BlocProvider.of<AuthBloc>(context).add(
                            AuthSignIn(username: username, password: password));
                      }
                    },
                    child: Text('GİRİŞ YAP'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
