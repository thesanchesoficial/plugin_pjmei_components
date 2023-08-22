import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/ui/components/widgets/ow_text.dart';

class CardItemDashboardBasicWidget extends StatelessWidget {
  final String title;
  final String description;
  final Color background;
  final Color onBackground;
  final double? fontSize;
  final IconData icon;
  final bool hideValue;
  const CardItemDashboardBasicWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.background,
    required this.onBackground,
    this.fontSize,
    required this.icon,
    this.hideValue = false,
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
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        border: Border.all(
          width: 1,
          color: background,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                child: Icon(
                  icon,
                  color: onBackground,
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: OwText(
                  '$title',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          OwText(
            '$description',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontSize: fontSize ?? Theme.of(context).textTheme.headlineMedium?.fontSize,
              fontWeight: FontWeight.bold,
            ),
            hideValue: hideValue,
          ),
        ],
      ),
    );
  }
}