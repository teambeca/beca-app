import 'package:beca_app/pages/main/leader_board.dart';
import 'package:beca_app/pages/main/play.dart';
import 'package:beca_app/pages/main/profile.dart';
import 'package:beca_app/pages/main/settings.dart';
import 'package:flutter/material.dart';

class MainPagesTabbar extends StatefulWidget {
  MainPagesTabbar({Key key}) : super(key: key);

  @override
  _MainPagesTabbarState createState() => _MainPagesTabbarState();
}

class _MainPagesTabbarState extends State<MainPagesTabbar> {
  List<Widget> originalList;
  Map<int, bool> originalDic;
  List<Widget> listScreens;
  List<int> listScreensIndex;

  int tabIndex = 0;
  Color tabColor = Colors.white;
  Color selectedTabColor = Colors.amber;

  @override
  void initState() {
    super.initState();

    originalList = [
      LeaderBoardPage(),
      PlayPage(),
      ProfilePage(),
      SettingsPage(),
    ];
    originalDic = {0: true, 1: false, 2: false, 3: false};
    listScreens = [originalList.first];
    listScreensIndex = [0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: listScreensIndex.indexOf(tabIndex), children: listScreens),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  void _selectedTab(int index) {
    if (originalDic[index] == false) {
      listScreensIndex.add(index);
      originalDic[index] = true;
      listScreensIndex.sort();
      listScreens = listScreensIndex.map((index) {
        return originalList[index];
      }).toList();
    }

    setState(() {
      tabIndex = index;
    });
  }

  BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).primaryColorDark,
      selectedIconTheme: IconThemeData(color: Theme.of(context).accentColor),
      unselectedIconTheme: IconThemeData(color: Colors.white),
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Colors.white,
      currentIndex: tabIndex,
      onTap: _selectedTab,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.assistant_photo),
          title: Text("Lider Tablosu"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_arrow),
          title: Text("Oyna"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text("Profil"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text("Ayarlar"),
        ),
      ],
    );
  }
}
