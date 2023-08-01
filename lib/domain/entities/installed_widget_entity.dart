import 'package:flutter/material.dart';

class InstalledWidget {
  InstalledWidget({
    required this.index,
    required this.widget,
    required this.type,
  });
  int index;
  Widget widget;
  String type;
}
