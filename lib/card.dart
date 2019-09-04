import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  PostCard({Key key, this.title, this.description}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String description;
  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.book),
            title: Text(title),
            subtitle: Text(description),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.arrow_upward),
                  label: Text('Upvote'),
                  onPressed: () {},
                ),
                FlatButton.icon(
                  icon: Icon(Icons.arrow_downward),
                  label: Text('Downvote'),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
