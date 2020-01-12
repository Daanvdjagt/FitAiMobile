
import 'package:fit_ai_mobile/app/screens/home.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:fit_ai_mobile/app/widgets/navbar.dart';
import 'package:fit_ai_mobile/app/widgets/rowcell.dart';
import 'package:fit_ai_mobile/app/widgets/custominputfield.dart';



class Daily extends StatelessWidget {
  static const String id = 'daily_screen';
  static const String title = "Daily";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Dashboard')),
      body: Center(
        child: RaisedButton(
          onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Text('Go back!'),

        ),
      ),
      drawer: Navbar(""),
    );
  }
}