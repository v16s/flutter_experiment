import 'package:flutter/material.dart';

ThemeData AMOLEDTheme = ThemeData(
  backgroundColor: Colors.black,
  primaryColor: Colors.black,
  accentColor: Colors.cyan[600],
  fontFamily: 'Montserrat',
  scaffoldBackgroundColor: Colors.black,
  bottomAppBarColor: Color.fromARGB(10, 240, 240, 240),
  cardColor: Color.fromARGB(15, 240, 240, 240),
  brightness: Brightness.dark,
  canvasColor: Colors.black,
  textTheme: TextTheme(
      headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
      title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
      body1: TextStyle(
          fontSize: 14, fontFamily: 'Roboto Mono', color: Colors.white)), // new
),
    DarkTheme = ThemeData(
  accentColor: Colors.cyan[600],
  fontFamily: 'Montserrat',
  brightness: Brightness.dark,
  textTheme: TextTheme(
      headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
      title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
      body1: TextStyle(
          fontSize: 14, fontFamily: 'Roboto Mono', color: Colors.white)), // new
),
    LightTheme = ThemeData(
  accentColor: Colors.cyan[600],
  fontFamily: 'Montserrat',
  textTheme: TextTheme(
      headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
      title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
      body1: TextStyle(
          fontSize: 14, fontFamily: 'Roboto Mono', color: Colors.white)), // new
);
