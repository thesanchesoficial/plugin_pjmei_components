import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/ui/components/widgets/ow_text.dart';

class CardDestaqueRecurso extends StatelessWidget {
  const CardDestaqueRecurso({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.page,
    this.onTap,
  }) : super(key: key);
  final String title;
  final String description;
  final String image;
  final String page;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Theme.of(context).colorScheme.secondaryContainer,
          ),
          elevation: MaterialStateProperty.all(0),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          foregroundColor: MaterialStateProperty.all(
            Theme.of(context).colorScheme.onSecondaryContainer,
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
        ),
        onPressed: onTap ??
            () {
              context.push(page);
            },
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
      ),
    );
  }
}
