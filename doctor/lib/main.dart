import 'package:doctor/models/shared.dart';
import 'package:doctor/screens/homepage.dart';
import 'package:doctor/screens/login.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

bool? valid;

@override
void initState() {
  checkData();
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: valid == true ? HomePage() : Login(),
      debugShowCheckedModeBanner: false,
    );
  }
  checkData() async {
    bool _valid = await Shared.getFromLocal('isLoggedIn');
    setState(() {
      valid = _valid;
    });
  }
}



// email => hticls5@gmail.com
// password => hticlsadmin