import 'package:flutter/material.dart';
import '../navbar.dart';

class Login extends StatelessWidget {
  static const String id = 'login_screen';
  static const String title = "Login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first screen when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
      drawer: Navbar("Login"),
    );
  }
}