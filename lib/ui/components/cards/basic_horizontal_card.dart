import 'package:flutter/material.dart';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class BasicHorizontalCard extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final String? description;
  final ColorSystem color;
  final Widget? leading;
  final Widget? extra;
  final EdgeInsets padding;
  const BasicHorizontalCard({
    Key? key,
    this.onPressed,
    this.title,
    this.description,
    required this.color,
    this.leading,
    this.extra,
    this.padding = const EdgeInsets.fromLTRB(25, 15, 25, 15),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorsByToken colors = ColorsAdapter.getByType(color);
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: padding,
        child: Row(
          children: [
            Visibility(
              visible: leading != null,
              child: Container(
                margin: const EdgeInsets.only(right: 25),
                child: leading,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Visibility(
                    visible: Valid.text(title),
                    child: OwText(
                      '$title',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: colors.onBackgroundAlternative,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: Valid.text(title) && Valid.text(description),
                    child: const SizedBox(height: 4),
                  ),
                  Visibility(
                    visible: Valid.text(description),
                    child: OwText(
                      '$description',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: colors.onBackgroundAlternative,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: extra != null,
              child: extra ?? const SizedBox(),
              replacement: Visibility(
                visible: onPressed != null,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: colors.onBackgroundAlternative,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
