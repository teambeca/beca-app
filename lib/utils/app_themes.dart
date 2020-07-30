import 'package:flutter/material.dart';

enum AppTheme {
  Blue,
  Green,
  Orange,
  Purple,
}

final Color bluePrimaryColor = Color.fromARGB(255, 33, 150, 243);
final Color bluePrimaryColorDark = Color.fromARGB(255, 23, 105, 170);
final Color bluePrimaryColorLight = Color.fromARGB(255, 77, 171, 245);

final Color greenPrimaryColor = Color.fromARGB(255, 0, 150, 136);
final Color greenPrimaryColorDark = Color.fromARGB(255, 0, 103, 91);
final Color greenPrimaryColorLight = Color.fromARGB(255, 82, 199, 184);

final Color orangePrimaryColor = Color.fromARGB(255, 255, 112, 67);
final Color orangePrimaryColorDark = Color.fromARGB(255, 198, 63, 23);
final Color orangePrimaryColorLight = Color.fromARGB(255, 255, 162, 112);

final Color purplePrimaryColor = Color.fromARGB(255, 156, 39, 176);
final Color purplePrimaryColorDark = Color.fromARGB(255, 106, 0, 128);
final Color purplePrimaryColorLight = Color.fromARGB(255, 208, 92, 227);

final appThemeData = {
  AppTheme.Blue: ThemeData(
    brightness: Brightness.light,
    primaryColor: bluePrimaryColor,
    primaryColorDark: bluePrimaryColorDark,
    primaryColorLight: bluePrimaryColorLight,
    accentColor: Colors.amber,
    scaffoldBackgroundColor: bluePrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      color: bluePrimaryColorLight,
      brightness: Brightness.light,
    ),
  ),
  AppTheme.Green: ThemeData(
    brightness: Brightness.light,
    primaryColor: greenPrimaryColor,
    primaryColorDark: greenPrimaryColorDark,
    primaryColorLight: greenPrimaryColorLight,
    accentColor: Colors.amber,
    scaffoldBackgroundColor: greenPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      color: greenPrimaryColorLight,
      brightness: Brightness.light,
    ),
  ),
  AppTheme.Orange: ThemeData(
    brightness: Brightness.light,
    primaryColor: orangePrimaryColor,
    primaryColorDark: orangePrimaryColorDark,
    primaryColorLight: orangePrimaryColorLight,
    accentColor: Colors.amber,
    scaffoldBackgroundColor: orangePrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      color: orangePrimaryColorLight,
      brightness: Brightness.light,
    ),
  ),
  AppTheme.Purple: ThemeData(
    brightness: Brightness.light,
    primaryColor: purplePrimaryColor,
    primaryColorDark: purplePrimaryColorDark,
    primaryColorLight: purplePrimaryColorLight,
    accentColor: Colors.amber,
    scaffoldBackgroundColor: purplePrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      color: purplePrimaryColorLight,
      brightness: Brightness.light,
    ),
  ),
};
