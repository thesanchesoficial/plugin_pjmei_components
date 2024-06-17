import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RoundedRectangularCard extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final String? description;
  final ColorSystem color;
  final Widget spotlight;
  final Widget? leading;

  const RoundedRectangularCard({
    super.key,
    this.onPressed,
    this.title,
    this.description,
    required this.color,
    this.spotlight = const SizedBox(),
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    final ColorsByToken colors = ColorsAdapter.getByType(color);
    return Container(
      width: MediaQuery.sizeOf(context).width,
      constraints: const BoxConstraints(minHeight: 60),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(colors.background),
            elevation: WidgetStateProperty.all(0),
            padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            )),
            side: WidgetStateProperty.all(BorderSide.none),
            shape: WidgetStateProperty.all(
              const ContinuousRectangleBorder(side: BorderSide.none),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            children: [
              Visibility(
                visible: leading != null,
                child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: leading ?? const SizedBox(),
                  ),
              ),
              Expanded(
                child: Visibility(
                  visible: Valid.text(title, length: 1),
                  child: OwText(
                    title ?? '',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: colors.onBackground,
                    ),
                    textAlign: leading != null
                      ? TextAlign.start
                      : TextAlign.center,
                  ),
                ),
              ),
              spotlight,
            ],
          ),
        ),
      ),
    );
  }
}
