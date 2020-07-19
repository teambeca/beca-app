import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'navigation/main.gr.dart';

final rootExNavigatorKey = GlobalKey<ExtendedNavigatorState>();
final tabbarExNavigatorKey = GlobalKey<ExtendedNavigatorState>();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator(
        key: rootExNavigatorKey,
        router: Router(),
        name: "main",
      ),
    );
  }
}
