import 'package:fit_ai_mobile/app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:fit_ai_mobile/app/widgets/custominputfield.dart';
import 'package:fit_ai_mobile/app/widgets/navbar.dart';

class Login extends StatelessWidget {
  static const String id = 'login_screen';
  static const String title = "Login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Dashboard')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              widthFactor: 0.6,
              heightFactor: 0.6,
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(200)),
                color: Color.fromRGBO(255, 255, 255, 0.4),
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 400,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network('https://static.vecteezy.com/system/resources/previews/000/595/164/large_2x/vector-object-and-icons-for-sport-label-gym-badge-fitness-logo-design.jpg',width: 80,height:80,),
                        )),
                    new Text(
          'Welcome to FitAi',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
                    CustomInputField(
                        Icon(Icons.person, color: Colors.white), 'Username'),
                    CustomInputField(
                        Icon(Icons.lock, color: Colors.white), 'Password'),
                    Container(
                      width: 150,
                      child: RaisedButton(
                        onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                           },
                           color: Colors.deepOrange,
                           textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text('Login',
                        style: TextStyle(
                            fontSize: 20.0),),),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}