import 'package:doctor/demodata.dart';
import 'package:doctor/widgets/subcategorywidget.dart';
import 'package:flutter/material.dart';



class Complete extends StatefulWidget {

  @override
  _CompleteState createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: doctorImages.length,
        itemBuilder: (context, index) {
          return SubDoctorWidget(doctorImages[index], Color(0xff34ca60), 'Completed');
        }
      ),
    );
  }
}