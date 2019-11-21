import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Healthy India")),
            backgroundColor: Colors.redAccent,
          ),
          body: Column(
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/wp2432582.jpg'),
                ),
              ),
              Center(
                child: Container(
                    height: 200, child: Text("Welcome to Health India App")),
              ),
              Center(
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter the Username')),
              ),
              Center(
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter the Password')),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
