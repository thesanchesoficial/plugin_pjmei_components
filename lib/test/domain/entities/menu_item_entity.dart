import 'package:flutter/material.dart';

class MenuItemEntity {
  String title;
  IconData icon;
  IconData selectedIcon;
  String route;

  MenuItemEntity({
    required this.title,
    required this.icon,
    required this.selectedIcon,
    required this.route,
  });
}
