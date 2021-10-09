import 'package:doctor/demodata.dart';
import 'package:doctor/models/mainmodel.dart';
import 'package:doctor/screens/filter.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/doctorwidget.dart';
import 'package:doctor/widgets/filterButton.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';



class SearchResult extends StatefulWidget {

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant(
      builder: (context, child, MainModel model) {
        return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            'Results',
            style: primaryTextStyle
          ),
          iconTheme: IconThemeData(color: primaryColor, size: 30.0),
          actions: [
            FilterButton()
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: model.selectedCategory!.doctors.length,
            itemBuilder: (context, index) {
              return DoctorWidget(model.selectedCategory!.doctors[index]);
            },
          ),
        ),
      );
      },
    );
  }
}