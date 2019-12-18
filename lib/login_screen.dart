import 'package:flutter/material.dart';
import 'package:training_app/home_screen.dart';

class LoginScreen extends StatelessWidget {
  // This widget is the root of your application.
  final textcontroller1 = TextEditingController();
  final textcontroller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          appBar: AppBar(
            title: Center(child: Text("Healthy India",
              style: TextStyle(fontFamily: 'DancingScript'),)),
            backgroundColor: Colors.redAccent,
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/wp2432582.jpg'),

                  ),
                ),
                Center(
                  child: Container(
                      height: 100,
                      child: Text(
                        "Welcome to Health India App",
                        style: TextStyle(fontFamily: 'DancingScript',fontSize: 25),
                      )),
                ),
                Center(
                  child: TextField(
                      controller: textcontroller1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder( ),
                          hintText: 'Enter the Username'),

                  ),
                ),
                Center(
                  child: TextField(
                      controller: textcontroller2,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter the Password')),
                ),
                Center(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Builder(
                              builder: (context) {
                              return RaisedButton(
                                child: Text("Login"),
                                color: Colors.red,
                                padding: EdgeInsets.all(8.0),
                                highlightColor: Colors.black,
                                onPressed: () {
                                  if (textcontroller1.text == "geek" &&
                                      textcontroller2.text == "geek" ) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen(
                                              textcontroller1.text,
                                              textcontroller2.text
                                          )),
                                    );
                                  }
                                  else{
                                    final sb = SnackBar(content: Text("Please register yourselves"),);
                                   Scaffold.of(context).showSnackBar(sb);
                                  }
                                },
                              );
                              }
                            ),
                          ),
                        ),
                        Center(
                          child: RaisedButton(
                            child: Text("Sign Up"),
                            color: Colors.red,
                            padding: EdgeInsets.all(8.0),
                            highlightColor: Colors.black,
                            onPressed: () {
                               },
                          ),
                        ),
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
