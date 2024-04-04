import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components_example/ui/routes.dart';

class HomeSettings extends StatelessWidget {
  const HomeSettings({super.key});
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightColorScheme, darkColorScheme) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.getLightThemeApp(
            colorScheme: lightColorScheme,
            visualDensity: VisualDensity.compact,
          ),
          darkTheme: AppTheme.getDarkThemeApp(
            colorScheme: darkColorScheme,
            visualDensity: VisualDensity.compact,
          ),
          themeMode: ThemeMode.system,
          routerDelegate: routes.routerDelegate,
          routeInformationParser: routes.routeInformationParser,
          routeInformationProvider: routes.routeInformationProvider,
          builder: ComponentsInit(
            webWidth: 600,
            isWeb: true,
            hidePrint: true,
            routers: {},
          ),
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
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                appSM.hideAmount = !appSM.hideAmount;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${WhiteLabelEntity.current?.name}'),
              Text('${Environment.current?.environmentType}'),
              ValueListenableBuilder(
                valueListenable: checkUserNotifier,
                builder: (context, user, widget) {
                  return OwText('{{${user?.name}}}');
                }
              ),
              Observer(builder: (context) => Text('${userSM.user?.name}')),
              const SizedBox(height: 25),
              Row(
                children: [
                  NavigationDestinationButton(
                    icon: Icons.add,
                    title: 'Teste',
                    count: ' ',
                    selected: true,
                    onDestinationSelected: () {},
                  ),
                  NavigationDestinationButton(
                    icon: Icons.add,
                    title: 'Teste',
                    selected: true,
                    onDestinationSelected: () {},
                  ),
                ],
              ),
              ButtonMenuWeb(
                icon: Icons.add,
                label: 'Teste',
                count: '10',
                selected: true,
                onPressed: () {  },
              ),
              ButtonMenuWeb(
                icon: Icons.add,
                label: 'Teste',
                count: '1',
                onPressed: () {  },
              ),
              ElevatedButton(
                child: const Text("Test"),
                onPressed: () => context.push("/test/sadfgasgs/arroz/fasdfsd"),
              ),
              ElevatedButton(
                child: const Text("Politica"),
                onPressed: () => context.push("/politica"),
              ),
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
            ],
          ),
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