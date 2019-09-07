import 'package:flutter/material.dart';
import 'views/index.dart';
import 'themes/index.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool isLoggedIn = false;
  void _login() {
    print('logging in');
    setState(() {
      isLoggedIn = true;
    });
  }

  int currentTheme = 0;
  void _setCurrentTheme(int theme) {
    setState(() {
      currentTheme = theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    String appName = 'Flutter Experiment';
    return MaterialApp(
      title: appName,
      initialRoute: '/',
      routes: {
        '/': (context) => !isLoggedIn
            ? HomePage(
                title: appName,
              )
            : LoginPage(_login),
      },

      theme: AMOLEDTheme,
      // home: HomePage(title: appName),
    );
  }
}
