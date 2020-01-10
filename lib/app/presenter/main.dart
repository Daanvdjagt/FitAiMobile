// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:fit_ai_mobile/app/screens/gopro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fit_ai_mobile/app/screens/home.dart';
import 'package:fit_ai_mobile/app/screens/login.dart';
import 'package:fit_ai_mobile/app/screens/profile.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:provider/provider.dart';
import 'package:fit_ai_mobile/app/viewmodel/drawerstateinfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to FitAI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 14,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text(
          'Welcome to FitAi',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: new Image.network(
            'https://static.vecteezy.com/system/resources/previews/000/595/164/large_2x/vector-object-and-icons-for-sport-label-gym-badge-fitness-logo-design.jpg'),
        backgroundColor: Colors.transparent,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 200.0,
        onClick: () => print("FitAi"),
        loaderColor: Colors.red);
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: MaterialApp(initialRoute: Login.id, routes: {
          Home.id: (context) => Home(),
          Login.id: (context) => Login(),
          Profile.id: (context) => Profile(),
          Gopro.id: (context) => Gopro(),
        }),
        providers: <SingleChildCloneableWidget>[
          ChangeNotifierProvider<DrawerStateInfo>(
              create: (_) => DrawerStateInfo()),
        ]);
  }
}
