import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:training_app/login_screen.dart';
import 'package:validators/validators.dart';
import 'package:training_app/home_screen.dart';

import 'about_screen.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  var textcontroller1 = TextEditingController();
  var textcontroller2 = TextEditingController();
  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration page"),
        backgroundColor: Colors.red,
      ),
      body:  Container(
        child: Builder(
          builder: (context) {
            return Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                      decoration: InputDecoration(hintText: 'Enter your Username',),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter some text";
                        }
                        var message = (!isAlpha(value.toString()))
                            ? "Enter a valid username"
                            : null;
                        return message;
                      },
                  controller: textcontroller1,),
                  TextFormField(
                      decoration:
                      InputDecoration(hintText: 'Enter your Password'),
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter some text";
                        }
                        var message = (!isAlphanumeric(value.toString()))
                            ? "Enter a valid password"
                            : null;
                        return message;
                      },
                        controller: textcontroller2,),

                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: RaisedButton(
                              onPressed: _onChanged,
                              child: Text('Submit'),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: RaisedButton(
                              onPressed: () {
                                _formKey.currentState.reset();
                              },
                              child: Text('Clear'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );

  }
  _onChanged() async {
//    if (_formKey.currentState.validate()) {
//      Scaffold.of(context).showSnackBar(SnackBar(
//          content: Text("User Registered successfully")));
//    }
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      sharedPreferences.setString("username", textcontroller1.text);
      sharedPreferences.setString("password", textcontroller2.text);
    });
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => AboutScreen()),
    );
  }
}
