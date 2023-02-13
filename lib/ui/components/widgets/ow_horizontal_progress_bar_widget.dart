import 'package:flutter/material.dart';

class OwHorizontalProgressBar extends StatelessWidget {
  final int quantity;
  final int quantityFilled;
  final double? spaceBetween;
  final double height;
  final double radius;
  final Color? progressColor;
  final Color? barColor;
  final Animation<Color>? colorAnimationLinearProgress;
  final bool animated;

  const OwHorizontalProgressBar({
    Key? key,
    this.quantity = 1,
    this.quantityFilled = 0,
    this.spaceBetween,
    this.radius = 15,
    this.progressColor,
    this.barColor,
    this.height = 10,
    this.colorAnimationLinearProgress,
    this.animated = true,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _progressBarList(context),
    );
  }

  List<Widget> _progressBarList(BuildContext context) {
    List<Widget> progressBarsTemp = [];
    double spaceBetweenTemp = spaceBetween ?? height / 2;
    for(int i = 0; i < quantity; i++) {
      progressBarsTemp.add(Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
          child: Container(
            height: height,
            color: i < quantityFilled
              ? progressColor ?? Theme.of(context).colorScheme.primary
              : i > quantityFilled || !animated
                ? barColor ?? Theme.of(context).colorScheme.surfaceVariant
                : Colors.transparent,
            child: i == quantityFilled && animated
              ? LinearProgressIndicator(
                backgroundColor: barColor ?? Theme.of(context).colorScheme.surfaceVariant,
                valueColor: colorAnimationLinearProgress ?? AlwaysStoppedAnimation<Color>(
                  progressColor ?? Theme.of(context).colorScheme.primary,
                ),
              )
              : const SizedBox(),
          ),
        ),
      ));

      if(i < quantity - 1) {
        progressBarsTemp.add(
          SizedBox(width: spaceBetweenTemp),
        );
      }
    }

    return progressBarsTemp;
  }
}
