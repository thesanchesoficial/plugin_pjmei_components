import 'package:flutter/material.dart';

import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RoundedSquareCard extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final ColorSystem color;
  final Widget spotlight;
  final Widget child;

  const RoundedSquareCard({
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
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10),
          constraints: const BoxConstraints(
            minHeight: 50,
          ),
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 8),
              ),
              backgroundColor: MaterialStateProperty.all(
                colors.background,
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              elevation: MaterialStateProperty.all(0),
            ),
            onPressed: onPressed,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(
                    child: child,
                  ),
                  OwVisibility(
                    visible: Valid.text(title),
                    child: OwText(
                      '$title',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: colors.onBackground,
                      ),
                      padding: const EdgeInsets.only(top: 10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            spotlight,
          ],
        ),
      ],
    );
  }
}
