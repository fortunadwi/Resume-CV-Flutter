import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

List<SideMenuItem> items = [
  SideMenuItem(
    // Priority of item to show on SideMenu, lower value is displayed at the top
    priority: 2,
    builder: (context, displayMode) {
      return Container();
    },
    title: 'Dashboard',
    // onTap: () => page.jumpToPage(0),
    onTap: () {},
    icon: Icon(Icons.home),
    badgeContent: Text(
      '3',
      style: TextStyle(color: Colors.white),
    ),
  ),
  SideMenuItem(
    priority: 1,
    title: 'Settings',
    // onTap: () => page.jumpToPage(1),
    onTap: () {},
    icon: Icon(Icons.settings),
  ),
  SideMenuItem(
    priority: 2,
    title: 'Exit',
    onTap: () {},
    icon: Icon(Icons.exit_to_app),
  ),
];
