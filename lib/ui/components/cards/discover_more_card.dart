import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:pjmei_white_label_dependencies/pjmei_white_label_dependencies.dart';

class DiscoverMoreCard extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final String? description;
  final String? labelTextButton;
  final ColorSystem color;
  final Widget spotlight;
  final Widget? leading;
  final Widget? extra;
  const DiscoverMoreCard({
    Key? key,
    this.onPressed,
    this.title,
    this.description,
    this.labelTextButton,
    required this.color,
    required this.spotlight,
    this.leading,
    this.extra,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorsByToken colors = ColorsAdapter.getByType(color);
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      constraints: const BoxConstraints(
        maxWidth: 260,
        minWidth: 180,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colors.background),
          elevation: MaterialStateProperty.all(0),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Observer(builder: (context) {
              return Visibility(
                visible: !appSM.dataSavingMode && extra != null,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: extra ?? const SizedBox(),
                  ),
                ),
              );
            }),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        Visibility(
                          visible: leading != null,
                          child: Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: leading ?? const SizedBox(),
                          ),
                        ),
                        Expanded(
                          child: Visibility(
                            visible: Valid.text(title),
                            child: OwText(
                              '${title}',
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                color: colors.onBackground,
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        spotlight,
                      ],
                    ),
                    Visibility(
                      visible: (leading != null || Valid.text(title)),
                      child: const SizedBox(height: 10),
                    ),
                    Visibility(
                      visible: Valid.text(description),
                      child: OwText(
                        '$description',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: colors.onBackground,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: Valid.text(labelTextButton),
                      child: OwButton.dynamic(
                        margin: const EdgeInsets.only(top: 15),
                        color: colors.spotlightColor,
                        foregroundColor: colors.onSpotlightColor,
                        labelText: labelTextButton ?? 'Saiba mais',
                        height: 40,
                        onPressed: onPressed,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
