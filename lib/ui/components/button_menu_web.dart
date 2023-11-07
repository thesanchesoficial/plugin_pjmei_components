import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class ButtonMenuWeb extends StatelessWidget {
  const ButtonMenuWeb({
    Key? key,
    required this.label,
    required this.icon,
    this.selected = false,
    this.count,
    required this.onPressed,
  }) : super(key: key);
  final String label;
  final String? count;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(15),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            selected
                ? Theme.of(context).colorScheme.primary.withOpacity(.15)
                : Theme.of(context).scaffoldBackgroundColor,
          ),
          elevation: MaterialStateProperty.all(0),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        onPressed: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                icon,
                color: selected
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).textTheme.bodyLarge?.color,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: OwText(
                  label,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: selected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Visibility(
                visible: Valid.text(count),
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$count',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
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