import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String _username1;
  @override
  void initState(){
    super.initState();
    _loadValues();
  }

  _loadValues() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      _username1 =  sharedPreferences.getString('username');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Page"), backgroundColor: Colors.red,),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                child: CircleAvatar(
                 child:ClipOval(child: Image.asset("assets/images/minion.jpg" )),
                  radius: 100.0,
                  backgroundColor: Colors.redAccent,
                ),
              ),
            ),
            Text("Name : $_username1")
          ],
        ),
      ),
    );
  }
}
