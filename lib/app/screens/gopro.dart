import 'package:flutter/material.dart';
import 'package:fit_ai_mobile/app/widgets/navbar.dart';

class Gopro extends StatelessWidget {
  static const String id = 'gopro_screen';
  static const String title = "Gopro";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FitAIMobile')),
      drawer: Navbar("Gopro"),
    );
  }
}
