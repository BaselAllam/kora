import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';



class ContactUs extends StatefulWidget {

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Contact Us',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
        actions: [
          SearchButton()
        ],
      ),
    );
  }
}