
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:fit_ai_mobile/app/widgets/navbar.dart';
import 'package:fit_ai_mobile/app/widgets/rowcell.dart';



class Daily extends StatelessWidget {
  static const String id = 'daily_screen';
  static const String title = "Daily";
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
      drawer: Navbar(""),
    );
  }
}