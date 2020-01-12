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
      body: Center(
        child: Container(
          child: Center(
            child: Text(
            "Upgrade to pro to get the most of the app!",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold)
            ),
          ),
          width: 300, 
          height: 400,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
            color: Colors.grey,
            blurRadius: 20.0,
            spreadRadius: 5.0,     
            )
          ],
          color: Colors.white,
          border: Border.all(
            width: 1.0,
            color: Colors.grey,
            )
          
          ),
        )
      ,),
      
    );
  }
}
