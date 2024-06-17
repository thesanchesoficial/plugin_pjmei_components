import 'package:flutter/material.dart';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class VerticalPictureCard extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final String? link;
  final ColorSystem color;
  const VerticalPictureCard({
    Key? key,
    this.onPressed,
    this.title,
    this.link,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorsByToken colors = ColorsAdapter.getByType(color);
    return AspectRatio(
      aspectRatio: 9 / 16,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.8,
        constraints: const BoxConstraints(
          maxWidth: 460,
          minWidth: 180,
          minHeight: 150,
          maxHeight: 450,
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              colors.background,
            ),
            elevation: WidgetStateProperty.all(0),
            padding: WidgetStateProperty.all(
              EdgeInsets.zero,
            ),
            shape: WidgetStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Visibility(
            visible: Valid.text(link),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              child: AspectRatio(
                aspectRatio: 9 / 16,
                child: Image.network(
                  '$link',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
