import 'package:flutter/material.dart';
import 'package:blood_app/menu_pages/home.dart';
import 'package:blood_app/menu_pages/hoperace.dart';
import 'package:blood_app/menu_pages/notifications.dart';
import 'package:blood_app/menu_pages/profile.dart';

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
          page: HomePage(),
          icon: Icon(Icons.home_outlined, color: Colors.red),
          title: Text("Home", style: TextStyle(color: Colors.red)),
        ),
        TabNavigationItem(
          page: Hoperace(),
          icon: Icon(Icons.gamepad_sharp, color: Colors.red),
          title: Text("Hoperace", style: TextStyle(color: Colors.red)),
        ),
        TabNavigationItem(
          page: Notifi(),
          icon: Icon(Icons.notifications_none_outlined, color: Colors.red),
          title: Text("Notification", style: TextStyle(color: Colors.red)),
        ),
        TabNavigationItem(
          page: Profile(),
          icon: Icon(Icons.person_outline, color: Colors.red),
          title: Text("profil", style: TextStyle(color: Colors.red)),
        ),
      ];
}
