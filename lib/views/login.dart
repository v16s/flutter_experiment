import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/drawer.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: PostDrawer(),
        appBar: AppBar(title: Text('Login')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                style: ,
              )
            ],
          ),
        ));
  }
}
