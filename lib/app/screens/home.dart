import 'package:fit_ai_mobile/app/screens/progress.dart';
import 'package:flutter/material.dart';
import 'package:fit_ai_mobile/app/widgets/navbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fit_ai_mobile/app/screens/daily.dart';


class Home extends StatelessWidget {
  static const String id = 'home_screen';
  static const String title = "Home";
  final TextStyle whiteText = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Dashboard')),
      body: _buildBody(context),
      drawer: Navbar("Home"),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          _buildHeader(context),
          const SizedBox(height: 50.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 190,
                      color: Colors.red.shade900,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "+5 kgs",
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .copyWith(color: Colors.green),
                            ),
                            trailing: Icon(
                              FontAwesomeIcons.dumbbell,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'In weight from last pushday!',
                              style: whiteText,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 120,
                      color: Colors.green.shade900,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "+10kgs",
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .copyWith(color: Colors.green.shade500),
                            ),
                            trailing: Icon(
                              FontAwesomeIcons.dumbbell,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Your benchpress had the most progress this month!',
                              style: whiteText,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 120,
                      color: Colors.orange.shade900,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            onTap: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (BuildContext context) => Progress()));
                             },
                            title: Text(
                              "+5%",
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .copyWith(color: Colors.green),
                            ),
                            trailing: Icon(
                              FontAwesomeIcons.dumbbell,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Monthly progress',
                              style: whiteText,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 190,
                      color: Colors.yellow.shade700,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "+1%",
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .copyWith(color: Colors.green),
                            ),
                            trailing: Icon(
                              FontAwesomeIcons.dumbbell,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Weekly increase in overall volume!',
                              style: whiteText,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 100,
          width: 350,
          color: Colors.white24,
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              "Today's monday, that means it's a pushday!",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => Daily()));
            },
          ),
        )
      ],
    );
  }
}
