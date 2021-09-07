import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:flutter/material.dart';



class CategoryWidget extends StatefulWidget {

  final String image;

  CategoryWidget(this.image);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          CircleAvatar(
            minRadius: 35.0,
            maxRadius: 35.0,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(widget.image),
          ),
          Text(
            'Dentist',
            style: primaryTextStyle,
          )
        ],
      ),
    );
  }
}