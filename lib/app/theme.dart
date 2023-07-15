import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF9010D9),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFF3DAFF),
  onPrimaryContainer: Color(0xFF2F004C),
  secondary: Color(0xFF7245B7),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFECDCFF),
  onSecondaryContainer: Color(0xFF280057),
  tertiary: Color(0xFF6E41C8),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFEADDFF),
  onTertiaryContainer: Color(0xFF24005B),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF1D1B1E),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF1D1B1E),
  surfaceVariant: Color(0xFFEADFEA),
  onSurfaceVariant: Color(0xFF4B454D),
  outline: Color(0xFF7C747E),
  onInverseSurface: Color(0xFFF6EFF3),
  inverseSurface: Color(0xFF332F33),
  inversePrimary: Color(0xFFE3B5FF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF9010D9),
  outlineVariant: Color(0xFFCDC3CE),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFE3B5FF),
  onPrimary: Color(0xFF4E0079),
  primaryContainer: Color(0xFF6E00AA),
  onPrimaryContainer: Color(0xFFF3DAFF),
  secondary: Color(0xFFD6BAFF),
  onSecondary: Color(0xFF420586),
  secondaryContainer: Color(0xFF5A2A9D),
  onSecondaryContainer: Color(0xFFECDCFF),
  tertiary: Color(0xFFD1BCFF),
  onTertiary: Color(0xFF3D008F),
  tertiaryContainer: Color(0xFF5623AF),
  onTertiaryContainer: Color(0xFFEADDFF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF1D1B1E),
  onBackground: Color(0xFFE7E0E5),
  surface: Color(0xFF1D1B1E),
  onSurface: Color(0xFFE7E0E5),
  surfaceVariant: Color(0xFF4B454D),
  onSurfaceVariant: Color(0xFFCDC3CE),
  outline: Color(0xFF978E98),
  onInverseSurface: Color(0xFF1D1B1E),
  inverseSurface: Color(0xFFE7E0E5),
  inversePrimary: Color(0xFF9010D9),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFE3B5FF),
  outlineVariant: Color(0xFF4B454D),
  scrim: Color(0xFF000000),
);

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  pageTransitionsTheme: pageTransitionsTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  pageTransitionsTheme: pageTransitionsTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
  ),
);

const pageTransitionsTheme = PageTransitionsTheme(
  builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.linux: ZoomPageTransitionsBuilder(),
    TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.windows: ZoomPageTransitionsBuilder(),
  },
);
