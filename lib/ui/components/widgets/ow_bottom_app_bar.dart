import 'package:flutter/material.dart';

class OwBottomAppBar extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? color;
  final Widget? child;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  const OwBottomAppBar({
    Key? key,
    this.margin,
    this.padding,
    this.color,
    this.child,
    this.border,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: Container(
        color: color != null ? Colors.transparent : Theme.of(context).colorScheme.background,
        child: Container(
          decoration: BoxDecoration(
            color: color ?? Theme.of(context).colorScheme.secondaryContainer.withOpacity(.25),
            border: border,
            borderRadius: borderRadius,
          ),
          padding: padding,
          margin: margin,
          child: child,
        ),
      ),
    );
  }
}
