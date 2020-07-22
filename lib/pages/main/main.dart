import 'package:auto_route/auto_route.dart';
import 'package:beca_app/main.dart';
import 'package:beca_app/navigation/tabbar.gr.dart';
import 'package:flutter/material.dart';

class MainPagesTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await homeExNavigatorKey.currentState.maybePop(),
      child: Scaffold(
        body: ExtendedNavigator(
          key: tabbarExNavigatorKey,
          router: TabbarRouter(),
          name: "tabbar",
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.black,
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          if (_currentIndex != index) {
            _currentIndex = index;
          } else {
            tabbarExNavigatorKey.currentState
                .popUntil((route) => route.isFirst);
          }
        });

        ExtendedNavigator.named("tabbar")
            .replace(TabbarRoutes.all.elementAt(index));
      },
      items: [
        for (final tabItem in TabNavigationItem.items)
          BottomNavigationBarItem(
            icon: tabItem.icon,
            title: tabItem.title,
          )
      ],
    );
  }
}

class TabNavigationItem {
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          icon: Icon(Icons.home),
          title: Text("LeaderBoard"),
        ),
        TabNavigationItem(
          icon: Icon(Icons.play_arrow),
          title: Text("Play"),
        ),
        TabNavigationItem(
          icon: Icon(Icons.account_circle),
          title: Text("Profile"),
        ),
        TabNavigationItem(
          icon: Icon(Icons.settings),
          title: Text("Settings"),
        ),
      ];
}
