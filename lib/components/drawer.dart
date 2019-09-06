import 'package:flutter/material.dart';

class PostDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Login'),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          )
        ],
      ),
    );
  }
}
