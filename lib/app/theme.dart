import 'package:flutter/material.dart';
import 'package:movies_flutter/utils/colors.dart';

const lightColorScheme =
    ColorScheme.light(primary: Color.fromARGB(255, 170, 0, 255));
const darkColorScehem = ColorScheme.dark();

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  backgroundColor: backgroundColor,
  pageTransitionsTheme: pageTransitionsTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: darkColorScehem,
  backgroundColor: backgroundColorDark,
  pageTransitionsTheme: pageTransitionsTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
    ),
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
