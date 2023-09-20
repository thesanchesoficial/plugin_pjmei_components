import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:pjmei_white_label_dependencies/pjmei_white_label_dependencies.dart';

class ItemModalWidget extends StatelessWidget {
  const ItemModalWidget({
    Key? key,
    required this.title,
    this.route = '/',
    required this.icon,
    this.onPressed,
  }) : super(key: key);
  final String title;
  final String route;
  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed ?? () {
          Navigator.pop(context);
          context.push(route);
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(26, 14, 26, 14),
          child: Row(
            children: [
              Icon(
                icon,
                color: Theme.of(context).textTheme.headlineLarge?.color,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: OwText(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
