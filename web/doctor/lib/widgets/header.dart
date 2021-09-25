import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:flutter/material.dart';



class Header extends StatefulWidget {

  final String txt;

  Header(this.txt);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
      ),
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.centerLeft,
      child: Text(
        '${widget.txt}',
        style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}