import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'help.dart';
import 'home_page.dart';
import 'settings.dart';

class BottomNavigationScreen extends StatefulWidget {
  BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      inactiveIcon: ImageIcon(
        AssetImage(
          "images/settings.png",
        ),
        color: Colors.pink,
      ),
      icon: ImageIcon(
        AssetImage(
          "images/settings.png",
        ),
        color: Colors.pink,
      ),
      title: ("Settings"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.activeBlue,
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: ImageIcon(
        AssetImage(
          "images/settings.png",
        ),
        color: Colors.pink,
      ),
      icon: Icon(Icons.home, color: Colors.pink),
      title: ("Settings"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.activeBlue,
    ),
    PersistentBottomNavBarItem(
      icon: ImageIcon(
        AssetImage("images/mark.png",),
        color: Colors.pink,
      ),
      title: ("About"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

final screens = [
  SettingsPage(),
  HomePage(),
  HelpPage(),
];

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: screens,

      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true,
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style13, // Choose the nav bar style with this property.
    );
  }
}
