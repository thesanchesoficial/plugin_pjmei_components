import 'package:flutter/material.dart';

class DividerVertical extends StatelessWidget {
  const DividerVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: 2,
        height: 56,
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
    );
  }
}