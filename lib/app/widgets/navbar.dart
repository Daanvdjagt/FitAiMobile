import 'package:flutter/material.dart';
import 'package:fit_ai_mobile/app/screens/home.dart';
import 'package:fit_ai_mobile/app/screens/profile.dart';
import 'package:fit_ai_mobile/app/viewmodel/drawerstateinfo.dart';
import 'package:provider/provider.dart';

class Navbar extends StatelessWidget {
  Navbar(this.currentPage);
  final String currentPage;

  @override
  Widget build(BuildContext context) {
    var currentDrawer = Provider.of<DrawerStateInfo>(context).getCurrentDrawer;
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Jane Doe"),
              accountEmail: Text("JaneDoe1995@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "A",
                  style: currentDrawer == 1
                      ? TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)
                      : TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.normal),
                ),
              ),
              onDetailsPressed: () {
                Navigator.of(context).pop();
                if (this.currentPage == "Profile") return;

                Provider.of<DrawerStateInfo>(context).setCurrentDrawer(1);

                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Profile()));
              }),
          ListTile(
            title: Text(Home.title,
                style: currentDrawer == 0
                    ? TextStyle(fontWeight: FontWeight.bold)
                    : TextStyle(fontWeight: FontWeight.normal)),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              if (this.currentPage == "Home") return;

              Provider.of<DrawerStateInfo>(context).setCurrentDrawer(0);

              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => Home()));
            },
          ),
          ListTile(
            title: Text('Version 0.1',
                style: currentDrawer == 2
                    ? TextStyle(fontWeight: FontWeight.bold)
                    : TextStyle(fontWeight: FontWeight.normal)),
            onTap: () {
              //     Navigator.of(context).pop();
              // if (this.currentPage == "About") return;

              // Provider.of<DrawerStateInfo>(context).setCurrentDrawer(1);

              // Navigator.of(context).pushReplacement(MaterialPageRoute(
              //     builder: (BuildContext context) => Version()));
            },
          )
        ],
      ),
    );
  }
}
