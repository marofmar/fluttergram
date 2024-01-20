import 'package:flutter/material.dart';

var _var1;

var theme = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.green,
  ),
  iconTheme: IconThemeData(color: Colors.redAccent, size: 60),
  appBarTheme: AppBarTheme(
      color: Colors.blueGrey,
      elevation: 1,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
      actionsIconTheme: IconThemeData(color: Colors.black)
  ),
  textTheme: TextTheme(
  ),
);