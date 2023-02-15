import 'package:flutter/material.dart';

class ThemeAdapter {
  static dynamic getTheme(String name, BuildContext context) {
    Map<String, dynamic> map = {
      "headline1": Theme.of(context).textTheme.displayLarge,
      "headline2": Theme.of(context).textTheme.displayMedium,
      "headline3": Theme.of(context).textTheme.displaySmall,
      "headline4": Theme.of(context).textTheme.headlineLarge,
      "headline5": Theme.of(context).textTheme.headlineSmall,
      "titleLarge": Theme.of(context).textTheme.titleLarge,
      "bodyLarge": Theme.of(context).textTheme.bodyLarge,
      "bodyText2": Theme.of(context).textTheme.bodyMedium,
    };

    return map[name] ?? Theme.of(context).textTheme.bodyLarge;
  }
}
