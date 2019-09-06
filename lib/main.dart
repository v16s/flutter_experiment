import 'package:flutter/material.dart';
import 'views/home.dart';
import 'views/login.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool isLoggedIn = false;
  void _login() {
    setState(() {
      isLoggedIn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    String appName = 'Flutter Experiment';
    return MaterialApp(
      title: appName,
      initialRoute: '/',
      routes: {
        '/': (context) => isLoggedIn
            ? HomePage(
                title: appName,
              )
            : LoginPage(_login),
      },

      theme: new ThemeData(
        backgroundColor: Colors.black,
        primaryColor: Colors.black,
        accentColor: Colors.cyan[600],
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        canvasColor: Colors.black,
        textTheme: TextTheme(
            headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
            body1: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto Mono',
                color: Colors.white)), // new
      ),
      // home: HomePage(title: appName),
    );
  }
}
