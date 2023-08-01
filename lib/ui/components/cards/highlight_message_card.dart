import 'package:flutter/material.dart';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class HighlightMessageCard extends StatelessWidget {
  final String? text;
  final ColorSystem color;
  const HighlightMessageCard({
    Key? key,
    this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!Valid.text(text)) {
      return const SizedBox();
    }
    final ColorsByToken colors = ColorsAdapter.getByType(color);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 2,
            ),
            decoration: BoxDecoration(
              color: colors.background,
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Center(
              child: OwText(
                '$text',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colors.onBackground,
                  overflow: TextOverflow.fade
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
