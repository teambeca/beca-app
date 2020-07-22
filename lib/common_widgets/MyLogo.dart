import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Theme.of(context).primaryColorDark,
      child: Text('Logo'),
    );
  }
}
