import 'package:flutter/material.dart';

class OwCircularProgressIndicator extends StatelessWidget {
  final Color? backgroundColor;
  final Color? color;
  final String? semanticsLabel;
  final String? semanticsValue;
  final double strokeWidth;
  final double? value;
  final Animation<Color?>? valueColor;
  const OwCircularProgressIndicator({
    Key? key,
    this.backgroundColor,
    this.color,
    this.semanticsLabel,
    this.semanticsValue,
    this.strokeWidth = 5,
    this.value,
    this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: backgroundColor,
      color: color,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
      strokeWidth: strokeWidth,
      value: value,
      valueColor: valueColor,
    );
  }
}
