import 'package:flutter/material.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class ColorsAdapter {
  static ColorsByToken getByType(ColorSystem c) {
    switch (c.type) {
      case "background":
        return ColorsByToken(
          background: Theme.of(c.context).colorScheme.background,
          onBackground: Theme.of(c.context).colorScheme.onBackground,
          onBackgroundAlternative: Theme.of(c.context).colorScheme.onBackground,
          button: Theme.of(c.context).colorScheme.secondaryContainer,
          onButton: Theme.of(c.context).colorScheme.onSecondaryContainer,
          selectedButton: Theme.of(c.context).colorScheme.primary,
          onSelectedButton: Theme.of(c.context).colorScheme.onPrimary,
          spotlightColor: Theme.of(c.context).colorScheme.primary,
          onSpotlightColor: Theme.of(c.context).colorScheme.onPrimary,
          surface: Theme.of(c.context).colorScheme.surfaceVariant,
          surfaceVariant: Theme.of(c.context).colorScheme.onSurfaceVariant,
        );
      case "primary":
        return ColorsByToken(
          background: Theme.of(c.context).colorScheme.primary,
          onBackground: Theme.of(c.context).colorScheme.onPrimary,
          onBackgroundAlternative: Theme.of(c.context).colorScheme.onPrimaryContainer,
          button: Theme.of(c.context).colorScheme.primaryContainer,
          onButton: Theme.of(c.context).colorScheme.onPrimaryContainer,
          selectedButton: Theme.of(c.context).colorScheme.onPrimaryContainer,
          onSelectedButton: Theme.of(c.context).colorScheme.primaryContainer,
          spotlightColor: Theme.of(c.context).colorScheme.primaryContainer,
          onSpotlightColor: Theme.of(c.context).colorScheme.onPrimaryContainer,
          surface: Theme.of(c.context).colorScheme.primary,
          surfaceVariant: Theme.of(c.context).colorScheme.onPrimary,
        );
      case "secondary":
        return ColorsByToken(
          background: Theme.of(c.context).colorScheme.secondary,
          onBackground: Theme.of(c.context).colorScheme.onSecondary,
          onBackgroundAlternative: Theme.of(c.context).colorScheme.onSecondaryContainer,
          button: Theme.of(c.context).colorScheme.secondaryContainer,
          onButton: Theme.of(c.context).colorScheme.onSecondaryContainer,
          selectedButton: Theme.of(c.context).colorScheme.onSecondaryContainer,
          onSelectedButton: Theme.of(c.context).colorScheme.secondaryContainer,
          spotlightColor: Theme.of(c.context).colorScheme.secondaryContainer,
          onSpotlightColor: Theme.of(c.context).colorScheme.onSecondaryContainer,
          surface: Theme.of(c.context).colorScheme.primary,
          surfaceVariant: Theme.of(c.context).colorScheme.onPrimary,
        );
      case "tertiary":
        return ColorsByToken(
          background: Theme.of(c.context).colorScheme.tertiary,
          onBackground: Theme.of(c.context).colorScheme.onTertiary,
          onBackgroundAlternative: Theme.of(c.context).colorScheme.onTertiary,
          button: Theme.of(c.context).colorScheme.tertiaryContainer,
          onButton: Theme.of(c.context).colorScheme.onTertiaryContainer,
          selectedButton: Theme.of(c.context).colorScheme.onTertiaryContainer,
          onSelectedButton: Theme.of(c.context).colorScheme.tertiaryContainer,
          spotlightColor: Theme.of(c.context).colorScheme.tertiaryContainer,
          onSpotlightColor: Theme.of(c.context).colorScheme.onTertiaryContainer,
          surface: Theme.of(c.context).colorScheme.primary,
          surfaceVariant: Theme.of(c.context).colorScheme.onPrimary,
        );
      case "primaryContainer":
        return ColorsByToken(
          background: Theme.of(c.context).colorScheme.primaryContainer,
          onBackground: Theme.of(c.context).colorScheme.onPrimaryContainer,
          onBackgroundAlternative: Theme.of(c.context).colorScheme.onBackground,
          button: Theme.of(c.context).colorScheme.background,
          onButton: Theme.of(c.context).colorScheme.onBackground,
          selectedButton: Theme.of(c.context).colorScheme.primary,
          onSelectedButton: Theme.of(c.context).colorScheme.onPrimary,
          spotlightColor: Theme.of(c.context).colorScheme.primary,
          onSpotlightColor: Theme.of(c.context).colorScheme.onPrimary,
          surface: Theme.of(c.context).colorScheme.primary,
          surfaceVariant: Theme.of(c.context).colorScheme.onPrimary,
        );
      case "secondaryContainer":
        return ColorsByToken(
          background: Theme.of(c.context).colorScheme.secondaryContainer,
          onBackground: Theme.of(c.context).colorScheme.onSecondaryContainer,
          onBackgroundAlternative: Theme.of(c.context).colorScheme.secondary,
          button: Theme.of(c.context).colorScheme.background,
          onButton: Theme.of(c.context).colorScheme.onBackground,
          selectedButton: Theme.of(c.context).colorScheme.primary,
          onSelectedButton: Theme.of(c.context).colorScheme.onPrimary,
          spotlightColor: Theme.of(c.context).colorScheme.primary,
          onSpotlightColor: Theme.of(c.context).colorScheme.onPrimary,
          surface: Theme.of(c.context).colorScheme.primary,
          surfaceVariant: Theme.of(c.context).colorScheme.onPrimary,
        );
      case "tertiaryContainer":
        return ColorsByToken(
          background: Theme.of(c.context).colorScheme.tertiaryContainer,
          onBackground: Theme.of(c.context).colorScheme.onTertiaryContainer,
          onBackgroundAlternative: Theme.of(c.context).colorScheme.tertiary,
          button: Theme.of(c.context).colorScheme.background,
          onButton: Theme.of(c.context).colorScheme.onBackground,
          selectedButton: Theme.of(c.context).colorScheme.tertiary,
          onSelectedButton: Theme.of(c.context).colorScheme.onTertiary,
          spotlightColor: Theme.of(c.context).colorScheme.primary,
          onSpotlightColor: Theme.of(c.context).colorScheme.onPrimary,
          surface: Theme.of(c.context).colorScheme.primary,
          surfaceVariant: Theme.of(c.context).colorScheme.onPrimary,
        );
      case "error":
        return ColorsByToken(
          background: Theme.of(c.context).colorScheme.error,
          onBackground: Theme.of(c.context).colorScheme.onError,
          onBackgroundAlternative: Theme.of(c.context).colorScheme.background,
          button: Theme.of(c.context).colorScheme.errorContainer,
          onButton: Theme.of(c.context).colorScheme.onErrorContainer,
          selectedButton: Theme.of(c.context).colorScheme.onErrorContainer,
          onSelectedButton: Theme.of(c.context).colorScheme.errorContainer,
          spotlightColor: Theme.of(c.context).colorScheme.errorContainer,
          onSpotlightColor: Theme.of(c.context).colorScheme.onErrorContainer,
          surface: Theme.of(c.context).colorScheme.primary,
          surfaceVariant: Theme.of(c.context).colorScheme.onPrimary,
        );
      case "errorContainer":
        return ColorsByToken(
          background: Theme.of(c.context).colorScheme.errorContainer,
          onBackground: Theme.of(c.context).colorScheme.onErrorContainer,
          onBackgroundAlternative: Theme.of(c.context).colorScheme.error,
          button: Theme.of(c.context).colorScheme.background,
          onButton: Theme.of(c.context).colorScheme.onBackground,
          selectedButton: Theme.of(c.context).colorScheme.error,
          onSelectedButton: Theme.of(c.context).colorScheme.onError,
          spotlightColor: Theme.of(c.context).colorScheme.errorContainer,
          onSpotlightColor: Theme.of(c.context).colorScheme.onErrorContainer,
          surface: Theme.of(c.context).colorScheme.primary,
          surfaceVariant: Theme.of(c.context).colorScheme.onPrimary,
        );
      case "surfaceVariant":
        return ColorsByToken(
          background: Theme.of(c.context).colorScheme.surfaceVariant,
          onBackground: Theme.of(c.context).colorScheme.onSurfaceVariant,
          onBackgroundAlternative: Theme.of(c.context).colorScheme.onSurface,
          button: Theme.of(c.context).colorScheme.background,
          onButton: Theme.of(c.context).colorScheme.onBackground,
          selectedButton: Theme.of(c.context).colorScheme.onSurfaceVariant,
          onSelectedButton: Theme.of(c.context).colorScheme.surfaceVariant,
          spotlightColor: Theme.of(c.context).colorScheme.primary,
          onSpotlightColor: Theme.of(c.context).colorScheme.onPrimary,
          surface: Theme.of(c.context).colorScheme.primary,
          surfaceVariant: Theme.of(c.context).colorScheme.onPrimary,
        );
      case "inverseInterface":
        return ColorsByToken(
          background: Theme.of(c.context).colorScheme.onBackground,
          onBackground: Theme.of(c.context).colorScheme.background,
          onBackgroundAlternative: Theme.of(c.context).colorScheme.surfaceVariant,
          button: Theme.of(c.context).colorScheme.onSurfaceVariant,
          onButton: Theme.of(c.context).colorScheme.surfaceVariant,
          selectedButton: Theme.of(c.context).colorScheme.surfaceVariant,
          onSelectedButton: Theme.of(c.context).colorScheme.onSurfaceVariant,
          spotlightColor: Theme.of(c.context).colorScheme.primaryContainer,
          onSpotlightColor: Theme.of(c.context).colorScheme.onPrimaryContainer,
          surface: Theme.of(c.context).colorScheme.primary,
          surfaceVariant: Theme.of(c.context).colorScheme.onPrimary,
        );
      default:
        return ColorsAdapter.getByType(
          ColorSystem(
            type: c.defaultType,
            context: c.context,
            defaultType: c.defaultType,
          ),
        );
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
