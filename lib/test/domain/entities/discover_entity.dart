import 'package:flutter/material.dart';

class DiscoverEntity {

  DiscoverEntity({
    this.title,
    this.description,
    this.router,
    this.label,
    this.image,
    this.params,
  });
  final String? title;
  final String? description;
  final String? router;
  final String? label;
  final Widget? image;
  final dynamic params;

  bool isValid() {
    return true;
  }
}