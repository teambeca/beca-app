import 'package:beca_app/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIGN UP"),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SignUpForm(),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  SignUpFormState createState() {
    return SignUpFormState();
  }
}

class SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();

  bool _checked = false;

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
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: _usernameController,
                    validator: (value) {
                      if (value.isEmpty) return 'Boş bırakmayınız';
                      if (value.length <= 3)
                        return 'Kullanıcı adı 3 karakterden uzun olmalıdır';
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
                      hintText: 'Kullanıcı Adı',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
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
                      hintText: 'Email',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
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
                      hintText: 'Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    obscureText: true,
                    controller: _rePasswordController,
                    validator: (value) {
                      if (value.isEmpty) return 'Boş bırakmayınız';
                      String password = _passwordController.text;
                      if (value.compareTo(password) != 0)
                        return 'Please enter same password';
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
                      hintText: 'Re-Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ListTileTheme(
                      contentPadding: EdgeInsets.all(0),
                      child: CheckboxListTile(
                        value: _checked,
                        onChanged: (val) {
                          setState(() {
                            _checked = val;
                          });
                        },
                        dense: false,
                        controlAffinity: ListTileControlAffinity.leading,
                        checkColor: Theme.of(context).primaryColor,
                        activeColor: Colors.white,
                        title: Text(
                          "Aydınlatma metnini okudum, kabul ediyorum",
                          // style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      onPressed: _checked
                          ? () async {
                              if (_formKey.currentState.validate()) {
                                String username =
                                    _usernameController.text.trim();
                                String email = _emailController.text.trim();
                                String password =
                                    _passwordController.text.trim();
                                BlocProvider.of<AuthBloc>(context).add(
                                  AuthSignUp(
                                    username: username,
                                    email: email,
                                    password: password,
                                  ),
                                );
                              }
                            }
                          : null,
                      child: Text('SIGN UP'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
