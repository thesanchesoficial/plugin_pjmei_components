import 'package:flutter/material.dart';

class OwDivider extends StatelessWidget {
  const OwDivider({
    Key? key,
    this.isColor = false,
    this.color,
  }) : super(key: key);
  final bool isColor;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: isColor
          ? Theme.of(context).colorScheme.secondaryContainer
          : color != null
              ? color
              : Theme.of(context).colorScheme.surfaceVariant,
    );
  }
}
