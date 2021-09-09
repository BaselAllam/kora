import 'package:doctor/demodata.dart';
import 'package:doctor/widgets/subcategorywidget.dart';
import 'package:flutter/material.dart';



class Upcoming extends StatefulWidget {

  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: doctorImages.length,
        itemBuilder: (context, index) {
          return SubDoctorWidget(doctorImages[index], Color(0xffecbb15), 'Upcoming');
        }
      ),
    );
  }
}