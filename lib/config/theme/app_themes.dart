import 'package:flutter/material.dart';

ThemeData myCustomTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: myCustomAppbarTheme(),
  );
}

AppBarTheme myCustomAppbarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: Color(0xFF8B8B8B),
    ),
    titleTextStyle: TextStyle(
      color: Color(0xFF8B8B8B),
    ),
  );
}
