// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

var darkTheme = const ColorScheme(
  primary: Color(0xffffffff),
  primaryVariant: Color.fromRGBO(72, 72, 72, 1),
  secondary: Color(0xffc8332c),
  secondaryVariant: Color(0xffff7263),
  surface: Color(0xff000000),
  background: Color(0xff000000),
  error: Color(0xffffffff),
  onPrimary: Color(0xffffffff),
  onSecondary: Color(0xffffffff),
  onSurface: Color(0xff000000),
  onBackground: Color(0xffffffff),
  onError: Color(0xffffffff),
  brightness: Brightness.dark,
);

final ThemeData myDarkTheme = ThemeData(
    primaryColor: const Color(0xffc8332c),
    colorScheme: darkTheme.copyWith(secondary: darkTheme.secondary),
    scaffoldBackgroundColor: Colors.black26,
    appBarTheme: const AppBarTheme(
      color: Color(0xff282828),
    ));

var lightTheme = const ColorScheme(
  primary: Color(0xff282828),
  primaryVariant: Color(0xff505050),
  onPrimary: Color(0xffffffff),
  secondary: Color(0xffc8332c),
  secondaryVariant: Color(0xffc4000f),
  onSecondary: Color(0xffffffff),
  surface: Color(0xffffffff),
  onSurface: Color(0xff7f7f7f),
  background: Color(0xfff6f6f6),
  onBackground: Color(0xff7f7f7f),
  error: Color(0xffc4000f),
  onError: Color(0xff7f7f7f),
  brightness: Brightness.light,
);

final ThemeData myLightTheme = ThemeData(
  primaryColor: const Color(0xffc8332c),
  highlightColor: const Color(0xffc8332c),
  fontFamily: 'Roboto',
  appBarTheme: const AppBarTheme(
    color: Color(0xffc8332c),
  ),
  scrollbarTheme: ScrollbarThemeData(
    thumbColor: MaterialStateProperty.all(
      const Color(0xffc8332c),
    ),
  ),
  dividerColor: const Color(0xff707070),
  scaffoldBackgroundColor: Colors.white,
  colorScheme: lightTheme.copyWith(secondary: lightTheme.secondary),
  indicatorColor: const Color(0xffc8332c),
  toggleableActiveColor: const Color(0xffc8332c),
);
