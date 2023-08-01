import 'package:flutter/material.dart';

class ShortcutsEntity {

  ShortcutsEntity({
    this.title,
    this.description,
    this.spotlight,
    this.marked = false,
    this.image,
    this.router,
    this.onTap,
    this.params,
  });
  final String? title;
  final String? description;
  final String? spotlight;
  final String? router;
  final Function()? onTap;
  final dynamic params;
  final bool? marked;
  final Widget? image;

  bool isValid() {
    return true;
  }
}
