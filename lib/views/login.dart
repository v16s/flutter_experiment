import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback login;
  LoginPage(this.login);
  @override
  _LoginPageState createState({
    Key key,
  }) =>
      _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username;
  String password;
  @override
  void initState() {
    super.initState();
    username = username ?? '';
    password = password ?? '';
  }

  void _onUsernameChange(String str) {
    setState(() {
      username = str;
    });
  }

  void _onPasswordChange(String str) {
    setState(() {
      password = str;
    });
  }

  void _onLogin() {
    if (username == '123' && password == '123') {
      widget.login();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Center(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    onChanged: _onUsernameChange,
                    style: TextStyle(
                        fontFamily: 'Google Sans',
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                    decoration: InputDecoration(
                        hintText: 'Username/Email',
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2.0, color: Colors.teal))),
                    cursorRadius: Radius.circular(2),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    onChanged: _onPasswordChange,
                    style: TextStyle(
                        fontFamily: 'Google Sans',
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2.0, color: Colors.teal))),
                    cursorRadius: Radius.circular(2),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    child: MaterialButton(
                      onPressed: _onLogin,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: 'Google Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      color: Colors.cyan,
                      height: 50,
                    ),
                    width: double.infinity,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
