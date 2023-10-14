import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class SmartSuggestionCard extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final String? description;
  final ColorSystem color;

  const SmartSuggestionCard({super.key, this.onPressed, this.title, this.description, required this.color});

  @override
  Widget build(BuildContext context) {
    final ColorsByToken colors = ColorsAdapter.getByType(color);
    return Ink(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        color: colors.background,
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        onTap: onPressed,
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.7,
          constraints: const BoxConstraints(
            maxWidth: 320,
            minWidth: 180,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 25,
            horizontal: 25,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Visibility(
                visible: Valid.text(title, length: 1),
                child: OwText(
                  '${title}',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: colors.onBackground,
                  ),
                ),
              ),
              Visibility(
                visible: Valid.text(title, length: 1) && Valid.text(description, length: 1),
                child: const SizedBox(height: 10),
              ),
              Visibility(
                visible: Valid.text(description, length: 1),
                child: OwText(
                  '${description}',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: colors.onBackground,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
