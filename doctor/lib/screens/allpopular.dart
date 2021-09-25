import 'package:doctor/demodata.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/doctorwidget.dart';
import 'package:doctor/widgets/filterButton.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';



class AllPopular extends StatefulWidget {

  @override
  _AllPopularState createState() => _AllPopularState();
}

class _AllPopularState extends State<AllPopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Popular Doctors',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
        actions: [
          FilterButton(),
          SearchButton(() {}),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: doctorImages.length,
          itemBuilder: (context, index) {
            return DoctorWidget(doctorImages[index]);
          },
        ),
      ),
    );
  }
}