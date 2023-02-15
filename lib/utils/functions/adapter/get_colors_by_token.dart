import 'package:flutter/material.dart';

class ColorsAdapter {
  static ColorsByToken getByType(String type, BuildContext context, String defaultType) {
    switch (type) {
      case "background":
        return ColorsByToken(
          background: Theme.of(context).colorScheme.background,
          onBackground: Theme.of(context).colorScheme.onBackground,
          onBackgroundAlternative: Theme.of(context).colorScheme.onBackground,
          button: Theme.of(context).colorScheme.secondaryContainer,
          onButton: Theme.of(context).colorScheme.onSecondaryContainer,
          selectedButton: Theme.of(context).colorScheme.primary,
          onSelectedButton: Theme.of(context).colorScheme.onPrimary,
          spotlightColor: Theme.of(context).colorScheme.primary,
          onSpotlightColor: Theme.of(context).colorScheme.onPrimary,
          surface: Theme.of(context).colorScheme.surfaceVariant,
          surfaceVariant: Theme.of(context).colorScheme.onSurfaceVariant,
        );
      case "primary":
        return ColorsByToken(
          background: Theme.of(context).colorScheme.primary,
          onBackground: Theme.of(context).colorScheme.onPrimary,
          onBackgroundAlternative: Theme.of(context).colorScheme.onPrimaryContainer,
          button: Theme.of(context).colorScheme.primaryContainer,
          onButton: Theme.of(context).colorScheme.onPrimaryContainer,
          selectedButton: Theme.of(context).colorScheme.onPrimaryContainer,
          onSelectedButton: Theme.of(context).colorScheme.primaryContainer,
          spotlightColor: Theme.of(context).colorScheme.primaryContainer,
          onSpotlightColor: Theme.of(context).colorScheme.onPrimaryContainer,
          surface: Theme.of(context).colorScheme.primary,
          surfaceVariant: Theme.of(context).colorScheme.onPrimary,
        );
      case "secondary":
        return ColorsByToken(
          background: Theme.of(context).colorScheme.secondary,
          onBackground: Theme.of(context).colorScheme.onSecondary,
          onBackgroundAlternative: Theme.of(context).colorScheme.onSecondaryContainer,
          button: Theme.of(context).colorScheme.secondaryContainer,
          onButton: Theme.of(context).colorScheme.onSecondaryContainer,
          selectedButton: Theme.of(context).colorScheme.onSecondaryContainer,
          onSelectedButton: Theme.of(context).colorScheme.secondaryContainer,
          spotlightColor: Theme.of(context).colorScheme.secondaryContainer,
          onSpotlightColor: Theme.of(context).colorScheme.onSecondaryContainer,
          surface: Theme.of(context).colorScheme.primary,
          surfaceVariant: Theme.of(context).colorScheme.onPrimary,
        );
      case "tertiary":
        return ColorsByToken(
          background: Theme.of(context).colorScheme.tertiary,
          onBackground: Theme.of(context).colorScheme.onTertiary,
          onBackgroundAlternative: Theme.of(context).colorScheme.onTertiary,
          button: Theme.of(context).colorScheme.tertiaryContainer,
          onButton: Theme.of(context).colorScheme.onTertiaryContainer,
          selectedButton: Theme.of(context).colorScheme.onTertiaryContainer,
          onSelectedButton: Theme.of(context).colorScheme.tertiaryContainer,
          spotlightColor: Theme.of(context).colorScheme.tertiaryContainer,
          onSpotlightColor: Theme.of(context).colorScheme.onTertiaryContainer,
          surface: Theme.of(context).colorScheme.primary,
          surfaceVariant: Theme.of(context).colorScheme.onPrimary,
        );
      case "primaryContainer":
        return ColorsByToken(
          background: Theme.of(context).colorScheme.primaryContainer,
          onBackground: Theme.of(context).colorScheme.onPrimaryContainer,
          onBackgroundAlternative: Theme.of(context).colorScheme.onBackground,
          button: Theme.of(context).colorScheme.background,
          onButton: Theme.of(context).colorScheme.onBackground,
          selectedButton: Theme.of(context).colorScheme.primary,
          onSelectedButton: Theme.of(context).colorScheme.onPrimary,
          spotlightColor: Theme.of(context).colorScheme.primary,
          onSpotlightColor: Theme.of(context).colorScheme.onPrimary,
          surface: Theme.of(context).colorScheme.primary,
          surfaceVariant: Theme.of(context).colorScheme.onPrimary,
        );
      case "secondaryContainer":
        return ColorsByToken(
          background: Theme.of(context).colorScheme.secondaryContainer,
          onBackground: Theme.of(context).colorScheme.onSecondaryContainer,
          onBackgroundAlternative: Theme.of(context).colorScheme.secondary,
          button: Theme.of(context).colorScheme.background,
          onButton: Theme.of(context).colorScheme.onBackground,
          selectedButton: Theme.of(context).colorScheme.primary,
          onSelectedButton: Theme.of(context).colorScheme.onPrimary,
          spotlightColor: Theme.of(context).colorScheme.primary,
          onSpotlightColor: Theme.of(context).colorScheme.onPrimary,
          surface: Theme.of(context).colorScheme.primary,
          surfaceVariant: Theme.of(context).colorScheme.onPrimary,
        );
      case "tertiaryContainer":
        return ColorsByToken(
          background: Theme.of(context).colorScheme.tertiaryContainer,
          onBackground: Theme.of(context).colorScheme.onTertiaryContainer,
          onBackgroundAlternative: Theme.of(context).colorScheme.tertiary,
          button: Theme.of(context).colorScheme.background,
          onButton: Theme.of(context).colorScheme.onBackground,
          selectedButton: Theme.of(context).colorScheme.tertiary,
          onSelectedButton: Theme.of(context).colorScheme.onTertiary,
          spotlightColor: Theme.of(context).colorScheme.primary,
          onSpotlightColor: Theme.of(context).colorScheme.onPrimary,
          surface: Theme.of(context).colorScheme.primary,
          surfaceVariant: Theme.of(context).colorScheme.onPrimary,
        );
      case "error":
        return ColorsByToken(
          background: Theme.of(context).colorScheme.error,
          onBackground: Theme.of(context).colorScheme.onError,
          onBackgroundAlternative: Theme.of(context).colorScheme.background,
          button: Theme.of(context).colorScheme.errorContainer,
          onButton: Theme.of(context).colorScheme.onErrorContainer,
          selectedButton: Theme.of(context).colorScheme.onErrorContainer,
          onSelectedButton: Theme.of(context).colorScheme.errorContainer,
          spotlightColor: Theme.of(context).colorScheme.errorContainer,
          onSpotlightColor: Theme.of(context).colorScheme.onErrorContainer,
          surface: Theme.of(context).colorScheme.primary,
          surfaceVariant: Theme.of(context).colorScheme.onPrimary,
        );
      case "errorContainer":
        return ColorsByToken(
          background: Theme.of(context).colorScheme.errorContainer,
          onBackground: Theme.of(context).colorScheme.onErrorContainer,
          onBackgroundAlternative: Theme.of(context).colorScheme.error,
          button: Theme.of(context).colorScheme.background,
          onButton: Theme.of(context).colorScheme.onBackground,
          selectedButton: Theme.of(context).colorScheme.error,
          onSelectedButton: Theme.of(context).colorScheme.onError,
          spotlightColor: Theme.of(context).colorScheme.errorContainer,
          onSpotlightColor: Theme.of(context).colorScheme.onErrorContainer,
          surface: Theme.of(context).colorScheme.primary,
          surfaceVariant: Theme.of(context).colorScheme.onPrimary,
        );
      case "surfaceVariant":
        return ColorsByToken(
          background: Theme.of(context).colorScheme.surfaceVariant,
          onBackground: Theme.of(context).colorScheme.onSurfaceVariant,
          onBackgroundAlternative: Theme.of(context).colorScheme.onSurface,
          button: Theme.of(context).colorScheme.background,
          onButton: Theme.of(context).colorScheme.onBackground,
          selectedButton: Theme.of(context).colorScheme.onSurfaceVariant,
          onSelectedButton: Theme.of(context).colorScheme.surfaceVariant,
          spotlightColor: Theme.of(context).colorScheme.primary,
          onSpotlightColor: Theme.of(context).colorScheme.onPrimary,
          surface: Theme.of(context).colorScheme.primary,
          surfaceVariant: Theme.of(context).colorScheme.onPrimary,
        );
      case "inverseInterface":
        return ColorsByToken(
          background: Theme.of(context).colorScheme.onBackground,
          onBackground: Theme.of(context).colorScheme.background,
          onBackgroundAlternative: Theme.of(context).colorScheme.surfaceVariant,
          button: Theme.of(context).colorScheme.onSurfaceVariant,
          onButton: Theme.of(context).colorScheme.surfaceVariant,
          selectedButton: Theme.of(context).colorScheme.surfaceVariant,
          onSelectedButton: Theme.of(context).colorScheme.onSurfaceVariant,
          spotlightColor: Theme.of(context).colorScheme.primaryContainer,
          onSpotlightColor: Theme.of(context).colorScheme.onPrimaryContainer,
          surface: Theme.of(context).colorScheme.primary,
          surfaceVariant: Theme.of(context).colorScheme.onPrimary,
        );
      default:
        return ColorsAdapter.getByType(defaultType, context, defaultType);
    }
  }
}

class ColorsByToken {
  final Color background;
  final Color onBackground;
  final Color onBackgroundAlternative;
  final Color button;
  final Color onButton;
  final Color selectedButton;
  final Color onSelectedButton;
  final Color spotlightColor;
  final Color onSpotlightColor;
  final Color surface;
  final Color surfaceVariant;

  ColorsByToken({
    required this.background,
    required this.onBackground,
    required this.onBackgroundAlternative,
    required this.button,
    required this.onButton,
    required this.selectedButton,
    required this.onSelectedButton,
    required this.spotlightColor,
    required this.onSpotlightColor,
    required this.surface,
    required this.surfaceVariant,
  });
}
