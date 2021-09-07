import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:flutter/material.dart';



class PopularDoctorWidget extends StatefulWidget {

  final String image;

  PopularDoctorWidget(this.image);

  @override
  _PopularDoctorWidgetState createState() => _PopularDoctorWidgetState();
}

class _PopularDoctorWidgetState extends State<PopularDoctorWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.favorite, color: secondaryColor, size: 18.0),
              Text(
                '    4.9',
                style: secondaryTextStyle,
              ),
              Icon(Icons.star, color: Colors.amber, size: 20.0),
            ],
          ),
          CircleAvatar(
            minRadius: 35.0,
            maxRadius: 35.0,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(widget.image),
          ),
          Text(
            'Dr: Ahmed',
            style: primaryTextStyle,
          )
        ],
      ),
    );
  }
}