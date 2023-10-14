import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class FullRectangularCard extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final String? description;
  final ColorSystem color;
  final Widget spotlight;
  final Widget? leading;
  final Widget? extra;

  const FullRectangularCard({
    Key? key,
    this.onPressed,
    this.title,
    this.description,
    required this.color,
    required this.spotlight,
    this.leading,
    this.extra,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorsByToken colors = ColorsAdapter.getByType(color);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              colors.background,
            ),
            elevation: MaterialStateProperty.all(0),
            padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
            side: MaterialStateProperty.all(BorderSide.none),
            shape: MaterialStateProperty.all(
              const ContinuousRectangleBorder(
                side: BorderSide.none,
              ),
            ),
          ),
          onPressed: onPressed,
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 25,
            ),
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: leading != null,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              leading ?? const SizedBox(),
                              spotlight,
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: Valid.text(title, length: 1),
                        child: OwText(
                          '${title}',
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: colors.onBackground,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: Valid.text(title, length: 1) && Valid.text(description, length: 1),
                        child: const SizedBox(height: 14),
                      ),
                      Visibility(
                        visible: Valid.text(description, length: 1),
                        child: OwText(
                          '${description}',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: colors.onBackground,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: extra != null,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: extra ?? const SizedBox(),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Center(
                  child: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: colors.onBackground,
                  ),
                )
              ],
            ),
          ),
        ),
        const OwDivider(),
      ],
    );
  }
}
