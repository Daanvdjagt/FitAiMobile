import 'package:flutter/material.dart';
import './screens/welcome.dart';
import './screens/login.dart';
import './screens/profile.dart';


// class Navbar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           FlatButton(
//               onPressed: () => Navigator.pop(context),
//               child: Icon(Icons.arrow_left, color: Colors.white, size: 40)),
//           FlatButton(
//               onPressed: () => Navigator.pushNamed(context, Welcome.id),
//               child: Icon(Icons.account_balance, color: Colors.white)),
//           FlatButton(
//               onPressed: () => Navigator.pushNamed(context, Login.id),
//               child: Icon(Icons.sync, color: Colors.white)),
//         ],
//       ),
//     );
//   }
// }


class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Jane Doe"),
              accountEmail: Text("JaneDoe1995@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              onDetailsPressed: () {
                Navigator.pushNamed(context, Profile.id);
              }
            ),
            ListTile(
              title: Text(Welcome.title),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, Welcome.id);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),
      );
  }
}
