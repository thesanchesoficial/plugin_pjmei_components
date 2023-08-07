import 'package:flutter/material.dart';

class NavigationDestinationButton extends StatelessWidget {
  const NavigationDestinationButton({
    super.key,
    required this.title,
    required this.icon,
    this.selected = false,
    required this.onDestinationSelected,
  });
  final String title;
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
          child: Center(
            child: Icon(
              icon,
              color: selected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.inverseSurface,
            ),
          ),
        ),
      ),
    );
  }
}