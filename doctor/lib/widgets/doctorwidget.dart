import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:flutter/material.dart';


class DoctorWidget extends StatefulWidget {

  final String img;

  DoctorWidget(this.img);

  @override
  _DoctorWidgetState createState() => _DoctorWidgetState();
}

class _DoctorWidgetState extends State<DoctorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: NetworkImage(widget.img),
                fit: BoxFit.fill
              )
            ),
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.red,
              iconSize: 30.0,
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Doctor Name',
                    style: primaryTextStyle,
                  ),
                Text(
                  '**** 4.9',
                  style: primaryColorTextStyle,
                ),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '10 Years Experience',
                  style: primaryColorTextStyle,
                ),
                Text(
                  '20\$ per/h',
                  style: primaryColorTextStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}