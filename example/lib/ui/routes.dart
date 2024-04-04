import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components_example/settings/settings.dart';
import 'package:plugin_pjmei_components_example/ui/bottom_app_bar.dart';
import 'package:plugin_pjmei_components_example/ui/buttons.dart';
import 'package:plugin_pjmei_components_example/ui/chips.dart';
import 'package:plugin_pjmei_components_example/ui/colors.dart';
import 'package:plugin_pjmei_components_example/ui/dialogs.dart';
import 'package:plugin_pjmei_components_example/ui/dropdown.dart';
import 'package:plugin_pjmei_components_example/ui/grid.dart';
import 'package:plugin_pjmei_components_example/ui/progress_bar.dart';
import 'package:plugin_pjmei_components_example/ui/textfields.dart';
import 'package:plugin_pjmei_components_example/ui/texts.dart';
import 'package:plugin_pjmei_components_example/ui/toasts.dart';

GoRoute owRoute({
  required String path,
  Widget Function(BuildContext context, GoRouterState state)? builder,
}) {
  return GoRoute(
    path: path,
    builder: builder,
  );
}

final routes = GoRouter(
  navigatorKey: navigatorKey,
  routes: [
    owRoute(
      path: "/",
      builder: (context, state) => const MyApp(),
    ),
    owRoute(
      path: "/buttons",
      builder: (context, state) => const ButtonsTestPage(),
    ),
    owRoute(
      path: "/test/:testId/arroz/:feijaoId",
      builder: (context, state) => const ButtonsTestPage(),
    ),
    owRoute(
      path: "/texts",
      builder: (context, state) => const TextsTestPage(),
    ),
    owRoute(
      path: "/colors",
      builder: (context, state) => const ColorsTestPage(),
    ),
    owRoute(
      path: "/textfields",
      builder: (context, state) => const TextfieldsTestPage(),
    ),
    owRoute(
      path: "/bottom-app-bar",
      builder: (context, state) => const BottomAppBarTestPage(),
    ),
    owRoute(
      path: "/grids",
      builder: (context, state) => const GridTestPage(),
    ),
    owRoute(
      path: "/toasts",
      builder: (context, state) => const ToastsTestPage(),
    ),
    owRoute(
      path: "/progress-bar",
      builder: (context, state) => const ProgressBarTestPage(),
    ),
    owRoute(
      path: "/chips",
      builder: (context, state) => const ChipsTestPage(),
    ),
    owRoute(
      path: "/dropdown",
      builder: (context, state) => const DropdownTestPage(),
    ),
    owRoute(
      path: "/politica",
      builder: (context, state) => PoliticaDePrivacidade(),
    ),
    owRoute(
      path: "/dialogs",
      builder: (context, state) => const DialogsTestPage(),
    ),
  ],
);