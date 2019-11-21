import 'dart:ui';

import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Center(
                  child: Text("Healthy India")),
                  backgroundColor: Colors.redAccent,
            ),
                  body: Column(
                    children: <Widget>[
                      Container(
                        color: Colors.orange,
                        child: FlutterLogo(
                          size: 60.0,
                        ),
                      ),
                      Container(
                        color: Colors.blue,
                        child: FlutterLogo(
                          size: 60.0,
                        ),
                      ),
                      Container(
                        color: Colors.purple,
                        child: FlutterLogo(
                          size: 60.0,
                        ),
                      ),
              Center(
          child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/images/wp2432582.jpg'),
          ),
          ),

                    ],
                  ),
          ),
        )
    );
  }
}
