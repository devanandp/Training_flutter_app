import 'package:flutter/material.dart';
import 'package:training_app/home_screen.dart';
import 'package:training_app/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final textcontroller1 = TextEditingController();

  final textcontroller2 = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

          appBar: AppBar(
            title: Center(child: Text("Healthy India",
              style: TextStyle(fontFamily: 'DancingScript'),)),
            backgroundColor: Colors.redAccent,
          ),
          body: Form(
            key: _formKey,
            child: Container(
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
                    child: TextFormField(
                        controller: textcontroller1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder( ),
                            hintText: 'Enter the Username'),
                            validator: (value){
                          return null;
                      },
                    ),
                  ),
                  Center(
                    child: TextFormField(
                        controller: textcontroller2,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter the Password'),
                        validator: (value){return null;}),
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
                                    if(textcontroller1.text.length < 6){
                                      final sb = SnackBar(content: Text("Please register yourselves"),);
                                      Scaffold.of(context).showSnackBar(sb);
                                      _formKey.currentState.reset();
                                    }
                                    else if(textcontroller1.text.length > 6) {
                                      print(textcontroller1.text);
                                      print(textcontroller2.text);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomeScreen(
                                                textcontroller1.text,
                                                textcontroller2.text
                                            )),
                                      );
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) {
                                       return Signup();
                                      }),
                                );
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
          ),
        );

  }
}
