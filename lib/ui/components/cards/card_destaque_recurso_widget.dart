import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class CardDestaqueRecurso extends StatelessWidget {
  const CardDestaqueRecurso({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String description;
  final String image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          Theme.of(context).colorScheme.secondaryContainer,
        ),
        elevation: WidgetStateProperty.all(0),
        padding: WidgetStateProperty.all(EdgeInsets.zero),
        foregroundColor: WidgetStateProperty.all(
          Theme.of(context).colorScheme.onSecondaryContainer,
        ),
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
      ),
      onPressed: onTap,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 280),
        width: MediaQuery.sizeOf(context).width * 0.60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              child: Image.asset(
                image,
                width: MediaQuery.sizeOf(context).width,
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  OwText(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 10),
                  OwText(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
