import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/ui/components/widgets/ow_text.dart';

class CardItemDashboardBasicWidget extends StatelessWidget {
  final String? title;
  final String? description;
  final Color? background;
  final Color? onBackground;
  final double? fontSize;
  const CardItemDashboardBasicWidget({
    Key? key,
    this.title,
    this.description,
    this.background,
    this.onBackground,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: MediaQuery.of(context).size.width * .6,
      constraints: const BoxConstraints(
        minWidth: 180,
        maxWidth: 320,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        color: background ?? Theme.of(context).colorScheme.surfaceVariant,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          OwText(
            '$title',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: background != null
                ? onBackground
                : Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 10),
          OwText(
            '$description',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: background != null
                ? onBackground
                : Theme.of(context).colorScheme.onSurfaceVariant,
              fontSize: fontSize ?? Theme.of(context).textTheme.headlineMedium?.fontSize
            ),
          ),
        ],
      ),
    );
  }
}