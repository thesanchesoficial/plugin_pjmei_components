import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF006E2C),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF79FD92),
  onPrimaryContainer: Color(0xFF002108),
  secondary: Color(0xFF516351),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFD4E8D1),
  onSecondaryContainer: Color(0xFF0F1F11),
  tertiary: Color(0xFF39656C),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFBDEAF3),
  onTertiaryContainer: Color(0xFF001F24),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFCFDF7),
  onBackground: Color(0xFF1A1C19),
  surface: Color(0xFFFCFDF7),
  onSurface: Color(0xFF1A1C19),
  surfaceVariant: Color(0xFFDDE5D9),
  onSurfaceVariant: Color(0xFF424940),
  outline: Color(0xFF727970),
  onInverseSurface: Color(0xFFF0F1EB),
  inverseSurface: Color(0xFF2E312D),
  inversePrimary: Color(0xFF5BE079),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF006E2C),
  outlineVariant: Color(0xFFC1C9BE),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF5BE079),
  onPrimary: Color(0xFF003914),
  primaryContainer: Color(0xFF005320),
  onPrimaryContainer: Color(0xFF79FD92),
  secondary: Color(0xFFB8CCB5),
  onSecondary: Color(0xFF243425),
  secondaryContainer: Color(0xFF3A4B3A),
  onSecondaryContainer: Color(0xFFD4E8D1),
  tertiary: Color(0xFFA1CED7),
  onTertiary: Color(0xFF00363D),
  tertiaryContainer: Color(0xFF1F4D54),
  onTertiaryContainer: Color(0xFFBDEAF3),
  error: Color(0xFF93000A),
  errorContainer: Color(0xFFFFB4AB),
  onError: Color(0xFFFFDAD6),
  onErrorContainer: Color(0xFF690005),
  background: Color(0xFF1A1C19),
  onBackground: Color(0xFFE2E3DD),
  surface: Color(0xFF1A1C19),
  onSurface: Color(0xFFE2E3DD),
  surfaceVariant: Color(0xFF424940),
  onSurfaceVariant: Color(0xFFC1C9BE),
  outline: Color(0xFF8B9389),
  onInverseSurface: Color(0xFF1A1C19),
  inverseSurface: Color(0xFFE2E3DD),
  inversePrimary: Color(0xFF006E2C),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF5BE079),
  outlineVariant: Color(0xFF424940),
  scrim: Color(0xFF000000),
);

class AppTheme {
  static const Color error = Colors.red;
  static const Color pending = Colors.orange;
  static const Color processing = Colors.yellow;
  static const Color verdeVenver = Color(0xff12aa4b);

  static const MaterialColor myGreen = MaterialColor(0xff12aa4b, {
    50: Color(0xFFe0ffec),
    100: Color(0xFF4BE285),
    200: Color(0xFF49DB81),
    300: Color(0xFF31D16E),
    400: Color(0xFF1BBD59),
    500: Color(0xff12aa4b),
    600: Color(0xFF14A049),
    700: Color(0xFF0C9942),
    800: Color(0xFF0A8B3C),
    900: Color(0xFF078638)
  });

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    primaryColor: const Color(0xFF006E2C),
    cardColor: lightColorScheme.secondaryContainer,
    unselectedWidgetColor: verdeVenver,
    scaffoldBackgroundColor: lightColorScheme.background,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      elevation: 5,
      selectedItemColor: Color(0xff12aa4b),
      unselectedItemColor: Colors.black,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(),
    brightness: Brightness.light,
    secondaryHeaderColor: Colors.grey[300],
    iconTheme: const IconThemeData(color: Color(0xff12aa4b)),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      // foregroundColor: lightColorScheme.onSecondaryContainer,
      // backgroundColor: lightColorScheme.secondaryContainer,
      foregroundColor: lightColorScheme.onPrimary,
      backgroundColor: lightColorScheme.primary,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll(lightColorScheme.primary),
        backgroundColor: MaterialStatePropertyAll(lightColorScheme.surfaceVariant),
      ),
    ),
    primaryIconTheme: const IconThemeData(
      color: Color(0xff12aa4b),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: Color(0xff12aa4b),
      ),
      color: lightColorScheme.background,
      actionsIconTheme: const IconThemeData(
        color: Color(0xff12aa4b),
      ),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
    scrollbarTheme: ScrollbarThemeData(
      mainAxisMargin: 0,
      interactive: true,
      radius: const Radius.circular(
        5,
      ),
      thickness: MaterialStateProperty.all(
        12,
      ),
      crossAxisMargin: 1,
      thumbColor: MaterialStateProperty.all(
        const Color(0xffc1c1c1),
      ),
      trackColor: MaterialStateProperty.all(
        const Color(0xfff1f1f1),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    primaryColor: const Color(0xFF5BE079),
    cardColor: darkColorScheme.secondaryContainer,
    unselectedWidgetColor: verdeVenver,
    scaffoldBackgroundColor: darkColorScheme.background,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      elevation: 5,
      selectedItemColor: Color(0xff12aa4b),
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(),
    brightness: Brightness.dark,
    secondaryHeaderColor: Colors.grey[300],
    iconTheme: const IconThemeData(color: Color(0xff12aa4b)),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: lightColorScheme.onPrimary,
      backgroundColor: lightColorScheme.primary,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll(darkColorScheme.primary),
        backgroundColor: MaterialStatePropertyAll(darkColorScheme.surfaceVariant),
      ),
    ),
    primaryIconTheme: const IconThemeData(color: Color(0xff12aa4b)),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: Color(0xff12aa4b),
      ),
      color: darkColorScheme.background,
      actionsIconTheme: const IconThemeData(
        color: Color(0xff12aa4b),
      ),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
    scrollbarTheme: ScrollbarThemeData(
      mainAxisMargin: 0,
      interactive: true,
      radius: const Radius.circular(15),
      thickness: MaterialStateProperty.all(
        12,
      ),
      crossAxisMargin: 1,
      thumbColor: MaterialStateProperty.all(
        const Color(0xff686868),
      ),
      trackColor: MaterialStateProperty.all(
        const Color(0xff424242),
      ),
    ),
  );

  static const Color errorColor = Color.fromARGB(0xFF, 239, 83, 80);
}
