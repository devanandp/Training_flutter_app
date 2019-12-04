import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Healthy India"),
              backgroundColor: Colors.red,
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountEmail: Text(
                      "deva051195@gmail.com",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    accountName: Text(
                      "Devanand",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    currentAccountPicture:
                        Image.asset("assets/images/wp2432582.jpg"),
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                  ListTile(
                    title: Text("Home", textAlign: TextAlign.center),
                    leading: Icon(
                      Icons.home,
                    ),
                  ),
                  ListTile(
                    title: Text("BMI Calculator", textAlign: TextAlign.center),
                    leading: Icon(
                      Icons.receipt,
                    ),
                  ),
                  ListTile(
                    title: Text("Calories", textAlign: TextAlign.center),
                    leading: Icon(
                      Icons.accessibility,
                    ),
                  ),
                  ListTile(
                    title: Text("Stress Analyser", textAlign: TextAlign.center),
                    leading: Icon(
                      Icons.gesture,
                    ),
                  ),
                  ListTile(
                    title: Text("Heart Risk Calculator",
                        textAlign: TextAlign.center),
                    leading: Icon(
                      Icons.stars,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
