import 'package:flutter/material.dart';
import 'package:training_app/bmi_calculator.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bmi_Calculator()),
                  );
                },
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
                title:
                    Text("Heart Risk Calculator", textAlign: TextAlign.center),
                leading: Icon(
                  Icons.stars,
                ),
              )
            ],
          ),
        ));
  }
}
