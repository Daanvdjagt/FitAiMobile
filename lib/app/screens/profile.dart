
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:fit_ai_mobile/app/navbar.dart';
import 'package:fit_ai_mobile/app/widgets/rowcell.dart';



class Profile extends StatelessWidget {
  static const String id = 'profile_screen';
  static const String title = "Profile";
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final String imgUrl = 'https://icon-library.net/images/default-profile-icon/default-profile-icon-24.jpg';

    return new Stack(children: <Widget>[
      new Container(color: Colors.blue,),
      new Image.network(imgUrl, fit: BoxFit.fill,),
      new BackdropFilter(
      filter: new ui.ImageFilter.blur(
      sigmaX: 6.0,
      sigmaY: 6.0,
      ),
      child: new Container(
      decoration: BoxDecoration(
      color:  Colors.blue.withOpacity(0.9),
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),)),
      new Scaffold(
          appBar: new AppBar(
            title: new Text('Text'),
            centerTitle: false,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
          drawer: Navbar("Profile"),
          backgroundColor: Colors.transparent,
          body: new Center(
            child: new Column(
              children: <Widget>[
                /* Avatar Header */
                new SizedBox(height: _height/12,),
                new CircleAvatar(radius:_width<_height? _width/4:_height/4,backgroundImage: NetworkImage(imgUrl),),
                new SizedBox(height: _height/25.0,),
                new Text('Jane Doe', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: _width/15, color: Colors.white),),
                new Padding(padding: new EdgeInsets.only(top: _height/30, left: _width/8, right: _width/8),
                /* Interests */
                  child:new Text('Snowboarder, Superhero and writer.\nSometime I work at google as Executive Chairman ',
                    style: new TextStyle(fontWeight: FontWeight.normal, fontSize: _width/25,color: Colors.white),textAlign: TextAlign.center,) ,),
                new Divider(height: _height/30,color: Colors.white,),
                /* Numbers */
                new Row(
                  children: <Widget>[
                    rowCell(343, 'POSTS'),
                    rowCell(673826, 'FOLLOWERS'),
                    rowCell(275, 'FOLLOWING'),
                  ],),
                new Divider(height: _height/30,color: Colors.white),
                new Padding(padding: new EdgeInsets.only(left: _width/8, right: _width/8), child: new FlatButton(onPressed: (){},
                  child: new Container(child: new Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
                    new Icon(Icons.person),
                    new SizedBox(width: _width/30,),
                    new Text('FOLLOW')
                  ],)),color: Colors.blue[50],),),
              ],
            ),
          )
      )
    ],);
  }
}