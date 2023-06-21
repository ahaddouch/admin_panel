import 'package:admin_panel/constants/theme.dart';
import 'package:flutter/material.dart';

ThemeData darkThemeData = ThemeData(
  scaffoldBackgroundColor: Color(0x40252323),
  primaryColor: Colors.green,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.green),
      textStyle: MaterialStateProperty.all(const TextStyle(color: Colors.green)),
      side: MaterialStateProperty.all(const BorderSide(color: Colors.green, width: 1.7)),
      overlayColor: MaterialStateProperty.all(Colors.green.withOpacity(0.2)),
      shape: MaterialStateProperty.all(const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      )),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.green.withOpacity(0.38);
        }
        return Colors.transparent;
      }),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: outlineInputBorder,
    errorBorder: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    focusedBorder: outlineInputBorder,
    disabledBorder: outlineInputBorder,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all(const Size(double.infinity, 48)),
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey;
        }
        return Colors.green;
      }),
      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 18.0)),
    ),
  ),
  canvasColor: Colors.green,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    toolbarTextStyle: TextStyle(color: Colors.white),
    iconTheme: IconThemeData(color: Colors.white),
  ),
);

OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.grey,
  ),
);

