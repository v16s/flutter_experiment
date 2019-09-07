import '../components/card.dart';
import 'package:flutter/material.dart';
import '../types/posts.dart';

class PostList extends StatefulWidget {
  final List<PostType> posts;

  PostList({Key key, this.posts, this.controller}) : super(key: key);
  final ScrollController controller;
  @override
  PostListState createState() => PostListState();
}

class PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: widget.controller,
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
      children: widget.posts
          .map((post) => PostCard(
                title: post.title,
                description: post.description,
                icon: post.icon,
              ))
          .toList(),
    );
  }
}
