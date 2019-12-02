import 'package:flutter/material.dart';
import 'package:fit_ai_mobile/app/navigator.dart';

class Welcome extends StatelessWidget {
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
      appBar: AppBar(
        title: Text('FitAIMobile')
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}