import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/utils/validators/validate.dart';

class NavigationDestinationButton extends StatelessWidget {
  const NavigationDestinationButton({
    super.key,
    required this.title,
    required this.icon,
    this.count,
    this.selected = false,
    required this.onDestinationSelected,
  });
  final String title;
  final String? count;
  final IconData icon;
  final bool selected;
  final Function() onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        width: 60,
        height: 50,
        decoration: BoxDecoration(
          color: selected
              ? Theme.of(context).colorScheme.primary.withOpacity(.2)
              : null,
          borderRadius: const BorderRadius.all(
            Radius.circular(80),
          ),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(80),
          ),
          onTap: onDestinationSelected,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Center(
                child: Icon(
                  icon,
                  color: selected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.inverseSurface,
                ),
              ),
              Visibility(
                visible: Valid.text(count),
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(4),
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
