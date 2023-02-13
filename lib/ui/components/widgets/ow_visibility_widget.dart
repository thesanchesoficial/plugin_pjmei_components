import 'package:flutter/material.dart';

class OwVisibility extends StatelessWidget {
  final Widget child;
  final Widget? replacement;
  final bool visible;

  const OwVisibility({
    Key? key,
    required this.child,
    this.replacement = const SizedBox(),
    this.visible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(visible) {
      return child;
    } else {
      return replacement ?? const SizedBox();
    }
  }
}
