import 'package:doctor/demodata.dart';
import 'package:doctor/models/mainmodel.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/doctorwidget.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';



class Wishlist extends StatefulWidget {

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Wishlisted Doctors',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
        actions: [
          SearchButton(() {})
        ],
      ),
      body: ScopedModelDescendant(
        builder: (context, child, MainModel model) {
          return Container(
            margin: EdgeInsets.all(10.0),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: model.allFav.length,
              itemBuilder: (context, index) {
                return DoctorWidget(model.allFav[index]);
              },
            ),
          );
        },
      ),
    );
  }
}