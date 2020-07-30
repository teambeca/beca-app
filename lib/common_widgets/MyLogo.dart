import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      // backgroundColor: Theme.of(context).primaryColorDark,
      backgroundColor: Colors.white,
      radius: 50,
      child: Image(image: AssetImage("assets/logo.png")),
    );
  }
}
