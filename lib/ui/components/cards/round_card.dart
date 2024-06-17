import 'package:flutter/material.dart';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RoundCard extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final ColorSystem color;
  final Widget spotlight;
  final Widget child;
  const RoundCard({
    Key? key,
    this.onPressed,
    this.title,
    required this.color,
    required this.spotlight,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorsByToken colors = ColorsAdapter.getByType(color);
    return Container(
      width: 95,
      constraints: const BoxConstraints(
        minHeight: 100,
        maxHeight: 160,
      ),
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(80),
                    ),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(80),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          colors.background,
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        elevation: WidgetStateProperty.all(0),
                      ),
                      onPressed: onPressed,
                      child: Center(
                        child: child,
                      ),
                    ),
                  ),
                ),
                spotlight,
              ],
            ),
            OwVisibility(
              visible: Valid.text(title, length: 1),
              child: OwText(
                '$title',
                padding: const EdgeInsets.only(top: 8),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colors.onBackgroundAlternative,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
