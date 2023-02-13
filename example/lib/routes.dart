import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components_example/bottom_app_bar.dart';
import 'package:plugin_pjmei_components_example/buttons.dart';
import 'package:plugin_pjmei_components_example/chips.dart';
import 'package:plugin_pjmei_components_example/colors.dart';
import 'package:plugin_pjmei_components_example/dropdown.dart';
import 'package:plugin_pjmei_components_example/grid.dart';
import 'package:plugin_pjmei_components_example/main.dart';
import 'package:plugin_pjmei_components_example/progress_bar.dart';
import 'package:plugin_pjmei_components_example/textfields.dart';
import 'package:plugin_pjmei_components_example/texts.dart';
import 'package:plugin_pjmei_components_example/toasts.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const MyApp(),
    ),
    GoRoute(
      path: "/buttons",
      builder: (context, state) => const ButtonsTestPage(),
    ),
    GoRoute(
      path: "/texts",
      builder: (context, state) => const TextsTestPage(),
    ),
    GoRoute(
      path: "/colors",
      builder: (context, state) => const ColorsTestPage(),
    ),
    GoRoute(
      path: "/textfields",
      builder: (context, state) => const TextfieldsTestPage(),
    ),
    GoRoute(
      path: "/bottom-app-bar",
      builder: (context, state) => const BottomAppBarTestPage(),
    ),
    GoRoute(
      path: "/grids",
      builder: (context, state) => const GridTestPage(),
    ),
    GoRoute(
      path: "/toasts",
      builder: (context, state) => const ToastsTestPage(),
    ),
    GoRoute(
      path: "/progress-bar",
      builder: (context, state) => const ProgressBarTestPage(),
    ),
    GoRoute(
      path: "/chips",
      builder: (context, state) => const ChipsTestPage(),
    ),
    GoRoute(
      path: "/dropdown",
      builder: (context, state) => const DropdownTestPage(),
    ),
  ],
);