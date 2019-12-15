import 'package:flutter/material.dart';
import 'package:fit_ai_mobile/app/navbar.dart';

class Welcome extends StatelessWidget {
  static const String id = 'welcome_screen';
  static const String title = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FitAIMobile')),
      drawer: Navbar(),
    );
  }
}
