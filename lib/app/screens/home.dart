import 'package:flutter/material.dart';
import 'package:fit_ai_mobile/app/navbar.dart';

class Home extends StatelessWidget {
  static const String id = 'home_screen';
  static const String title = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FitAIMobile')),
      drawer: Navbar("Home"),
    );
  }
}
