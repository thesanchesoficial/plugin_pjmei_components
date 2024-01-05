import 'package:flutter/material.dart';

class ColorSystem {
  String? type;
  BuildContext context;
  String defaultType;
  ColorSystem({
    this.type,
    required this.context,
    this.defaultType = 'primaryContainer',
  });
}
