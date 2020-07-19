import 'package:auto_route/auto_route.dart';
import 'package:beca_app/main.dart';
import 'package:beca_app/navigation/tabbar.gr.dart';
import 'package:beca_app/pages/leader_board.dart';
import 'package:beca_app/pages/play.dart';
import 'package:beca_app/pages/profile.dart';
import 'package:beca_app/pages/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await rootExNavigatorKey.currentState.maybePop(),
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
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: LeaderBoardPage(),
          icon: Icon(Icons.home),
          title: Text("LeaderBoard"),
        ),
        TabNavigationItem(
          page: PlayPage(),
          icon: Icon(Icons.play_arrow),
          title: Text("Play"),
        ),
        TabNavigationItem(
          page: ProfilePage(),
          icon: Icon(Icons.account_circle),
          title: Text("Profile"),
        ),
        TabNavigationItem(
          page: SettingsPage(),
          icon: Icon(Icons.settings),
          title: Text("Settings"),
        ),
      ];
}
