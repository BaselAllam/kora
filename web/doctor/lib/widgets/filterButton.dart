import 'package:doctor/screens/filter.dart';
import 'package:flutter/material.dart';



class FilterButton extends StatefulWidget {

  @override
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.filter_list),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(fullscreenDialog: true, builder: (_) {return FilterScreen();}));
      },
    );
  }
}