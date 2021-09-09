import 'package:doctor/demodata.dart';
import 'package:doctor/widgets/subcategorywidget.dart';
import 'package:flutter/material.dart';




class Cancelled extends StatefulWidget {

  @override
  _CancelledState createState() => _CancelledState();
}

class _CancelledState extends State<Cancelled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: doctorImages.length,
        itemBuilder: (context, index) {
          return SubDoctorWidget(doctorImages[index], Color(0xfff63866), 'Cancelled');
        }
      ),
    );
  }
}