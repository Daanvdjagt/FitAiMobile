import 'package:flutter/material.dart';
import 'package:fit_ai_mobile/app/navigator.dart';

class Welcome extends StatelessWidget {
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FitAIMobile')
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          ListTile(
            title: Text('Item 1'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text('Item 2'),
            trailing: Icon(Icons.arrow_forward),
          )
        ],),
      ),
    );
  }
}