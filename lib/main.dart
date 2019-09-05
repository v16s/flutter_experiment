import 'package:flutter/material.dart';
import 'card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String appName = 'Flutter Experiment';
    return MaterialApp(
      title: appName,
      theme: new ThemeData(
        backgroundColor: Colors.black,
        primaryColor: Colors.black,
        accentColor: Colors.cyan[600],
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.black,

        textTheme: TextTheme(
            headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
            body1: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto Mono',
                color: Colors.white)), // new
      ),
      home: MyHomePage(title: appName),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Post {
  Post({Key key, this.title, this.description, this.icon});
  String title, description;
  Icon icon;
}

class _MyHomePageState extends State<MyHomePage> {
  var posts = [1, 2, 3, 4, 5, 6, 7].map((number) => Post(
      title: "Post ${number.toString()}",
      description: "Description of post ${number.toString()}",
      icon: Icon(
        Icons.person,
        color: Colors.cyan,
      )));

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          children: posts
              .map((post) => PostCard(
                    title: post.title,
                    description: post.description,
                    icon: post.icon,
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'New Post',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
