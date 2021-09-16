import 'package:flutter/material.dart';
import 'package:doctor/screens/homepage.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


// https://cdn.sketchrepo.com/images/2x/freebie-design-concept-illustrator-3d-k8.jpg