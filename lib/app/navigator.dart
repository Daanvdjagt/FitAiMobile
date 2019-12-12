import 'package:flutter/material.dart';
import './screens/welcome.dart';
import './screens/login.dart';


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
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Item 2'),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        )
      ),
    );
  }
}
