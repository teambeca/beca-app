import 'package:beca_app/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LeaderBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leader Board Page"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              BlocProvider.of<AuthBloc>(context).add(AuthLogOut());
            },
            child: Text("Log Out"),
          ),
        ),
      ),
    );
  }
}
