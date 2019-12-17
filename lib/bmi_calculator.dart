import 'package:flutter/material.dart';

class Bmicalculator extends StatefulWidget {
  @override
  _BmicalculatorState createState() {
    return _BmicalculatorState();
  }
}

class _BmicalculatorState extends State<Bmicalculator> {
  var bmi = 0.0;
  final textcontroller1 = TextEditingController();
  final textcontroller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Container(
        child: Image.asset(
          'assets/images/bmi_about.png',
          fit: BoxFit.contain,
        ),
      ),
      ListTile(
        title: Text(
          'Formula for calculating BMI: Weight/Height*Height',
          style: TextStyle(color: Colors.deepPurple, fontSize: 15.0),
        ),
      ),
      new Divider(
        color: Colors.deepPurple,
        thickness: 5.0,
      ),
      Container(
          child: Row(
        children: <Widget>[
          Container(
            child: Text(
              'Height in meters',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Container(
            width: 270,
            padding: EdgeInsets.all(4.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your height', border: InputBorder.none),
              controller: textcontroller1,
            ),
          )
        ],
      )),
      new Divider(
        color: Colors.deepPurple,
        thickness: 5.0,
      ),
      Container(
          child: Row(
        children: <Widget>[
          Container(
            child: Text(
              'Weight in kg',
              style: TextStyle(
                fontSize: 21,
              ),
            ),
          ),
          Container(
            width: 270,
            padding: EdgeInsets.all(4.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your height', border: InputBorder.none),
              controller: textcontroller2,
            ),
          )
        ],
      )),
      new Divider(
        color: Colors.deepPurple,
        thickness: 5.0,
      ),
      Container(
          height: 50,
          child: Row(
            children: <Widget>[
              ButtonTheme(
                height: 60,
                child: RaisedButton(
                  child: Text("Calculate BMI"),
                  color: Colors.deepPurple,
                  onPressed: () {
                    setState(() {
                      bmi = double.parse(textcontroller1.text) /
                          double.parse(textcontroller2.text);
                    });
                  },
                ),
              ),
              Container(
                child: Text(
                  "Your BMI is $bmi",
                  style: TextStyle(
                    fontSize: 21,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )),
      new Divider(
        color: Colors.deepPurple,
        thickness: 5.0,
      ),
      Container(
        height: 30,
        child: Row(),
      ),
      new Divider(
        color: Colors.deepPurple,
        thickness: 5.0,
      ),
    ]));
  }
}
