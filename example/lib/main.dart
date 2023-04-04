import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components_example/routes.dart';

void main() {
  runApp(
    DynamicColorBuilder(
      builder: (lightColorScheme, darkColorScheme) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.getLightThemeApp(colorScheme: lightColorScheme),
          darkTheme: AppTheme.getDarkThemeApp(colorScheme: darkColorScheme),
          themeMode: ThemeMode.system,
          routerDelegate: routes.routerDelegate,
          routeInformationParser: routes.routeInformationParser,
          routeInformationProvider: routes.routeInformationProvider,
          builder: ComponentsInit(webWidth: 600, isWeb: true, hidePrint: false),
          title: "PJMEI COMPONENTS",
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('pt', 'BR'),
          ],
          locale: const Locale('pt', 'BR'),
        );
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _pluginPjmeiComponentsPlugin = PluginPjmeiComponents();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await _pluginPjmeiComponentsPlugin.getPlatformVersion() ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  bool enable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OwAppBar(
        title: const Text('Plugin example app'),
        actions: [
          IconButton(
            icon: const Icon(Icons.abc),
            onPressed: () {
              setState(() {
                enable = !enable;
              });
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Buttons"),
              onPressed: () => context.push("/buttons"),
            ),
            ElevatedButton(
              child: const Text("Texts"),
              onPressed: () => context.push("/texts"),
            ),
            ElevatedButton(
              child: const Text("Colors"),
              onPressed: () => context.push("/colors"),
            ),
            ElevatedButton(
              child: const Text("Textfields"),
              onPressed: () => context.push("/textfields"),
            ),
            ElevatedButton(
              child: const Text("Bottom App Bar"),
              onPressed: () => context.push("/bottom-app-bar"),
            ),
            ElevatedButton(
              child: const Text("Grid"),
              onPressed: () => context.push("/grids"),
            ),
            ElevatedButton(
              child: const Text("Toasts"),
              onPressed: () => context.push("/toasts"),
            ),
            ElevatedButton(
              child: const Text("Progress Bar"),
              onPressed: () => context.push("/progress-bar"),
            ),
            ElevatedButton(
              child: const Text("Chips"),
              onPressed: () => context.push("/chips"),
            ),
            ElevatedButton(
              child: const Text("Dropdowns"),
              onPressed: () => context.push("/dropdown"),
            ),
            ElevatedButton(
              child: const Text("Dialogs"),
              onPressed: () => context.push("/dialogs"),
            ),
            const SizedBox(height: 50),
            Center(
              child: Text('Running on: $_platformVersion\n'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("Teste"),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.add),
            label: "Teste",
          ),
          NavigationDestination(
            icon: Icon(Icons.add),
            label: "Teste",
          ),
          NavigationDestination(
            icon: Icon(Icons.add),
            label: "Teste",
          ),
        ],
      ),
    );
  }
}