import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class ColorsTestPage extends StatefulWidget {
  const ColorsTestPage({super.key});

  @override
  State<ColorsTestPage> createState() => _ColorsTestPageState();
}

class _ColorsTestPageState extends State<ColorsTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: const Text('Plugin example app'),
        actions: [
          IconButton(
            icon: const Icon(Icons.abc),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _container(
                title: "primary",
                background: Theme.of(context).colorScheme.primary,
                onBackground: Theme.of(context).colorScheme.onPrimary,
              ),
              _container(
                title: "primaryContainer",
                background: Theme.of(context).colorScheme.primaryContainer,
                onBackground: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              _container(
                title: "secondary",
                background: Theme.of(context).colorScheme.secondary,
                onBackground: Theme.of(context).colorScheme.onSecondary,
              ),
              _container(
                title: "secondaryContainer",
                background: Theme.of(context).colorScheme.secondaryContainer,
                onBackground:
                    Theme.of(context).colorScheme.onSecondaryContainer,
              ),
              _container(
                title: "tertiary",
                background: Theme.of(context).colorScheme.tertiary,
                onBackground: Theme.of(context).colorScheme.onTertiary,
              ),
              _container(
                title: "tertiaryContainer",
                background: Theme.of(context).colorScheme.tertiaryContainer,
                onBackground: Theme.of(context).colorScheme.onTertiaryContainer,
              ),
              _container(
                title: "error",
                background: Theme.of(context).colorScheme.error,
                onBackground: Theme.of(context).colorScheme.onError,
              ),
              _container(
                title: "errorContainer",
                background: Theme.of(context).colorScheme.errorContainer,
                onBackground: Theme.of(context).colorScheme.onErrorContainer,
              ),
              _container(
                title: "background",
                background: Theme.of(context).colorScheme.background,
                onBackground: Theme.of(context).colorScheme.onBackground,
              ),
              _container(
                title: "surfaceVariant",
                background: Theme.of(context).colorScheme.surfaceVariant,
                onBackground: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _container(
      {required String title,
      required Color background,
      required Color onBackground}) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(35),
      color: background,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: onBackground,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
