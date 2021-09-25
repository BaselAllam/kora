import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:flutter/material.dart';



class SearchButton extends StatefulWidget {

  final Function onTap;

  SearchButton(this.onTap);

  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.search),
      color: primaryColor,
      iconSize: 30.0,
      onPressed: () {
        widget.onTap();
      },
    );
  }
}