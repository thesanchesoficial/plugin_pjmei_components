import 'package:flutter/material.dart';

class TabModuleWidget {
  TabModuleWidget({
    required this.title,
    required this.icon,
    required this.page,
    this.count,
  });
  String? count;
  String title;
  IconData icon;
  Widget page;
}