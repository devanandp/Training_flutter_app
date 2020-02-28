import 'package:flutter/material.dart';
import 'package:training_app/bmi_calculator.dart';

class HomeScreen extends StatefulWidget {
  final String username;
  final String password;

  HomeScreen(this.username, this.password);

  @override
  _HomeScreenState createState() {
    return _HomeScreenState(username, password);
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final String username;
  final String password;

  _HomeScreenState(this.username, this.password);

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
                  username,
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen(username, password)));
                },
              ),
              ListTile(
                title: Text("BMI Calculator", textAlign: TextAlign.center),
                leading: Icon(
                  Icons.receipt,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bmicalculator()),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
