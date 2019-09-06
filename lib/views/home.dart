import 'package:flutter/material.dart';
import 'list.dart';
import '../types/posts.dart';
import '../components/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var posts = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      .map((number) => PostType(
          title: "Post ${number.toString()}",
          description: "Description of post ${number.toString()}",
          icon: Icon(
            Icons.person,
            color: Colors.cyan,
          )))
      .toList();

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
        // Here we take the value from the HomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: PostList(
          posts: posts,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'New Post',
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      drawer:
          PostDrawer(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
