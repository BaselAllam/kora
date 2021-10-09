import 'package:doctor/demodata.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/categorywidget.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';



class AllCategory extends StatefulWidget {

  @override
  _AllCategoryState createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Categories',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
        actions: [
          SearchButton(() {})
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1
          ),
          scrollDirection: Axis.vertical,
          itemCount: categoryImages.length,
          itemBuilder: (context, index) {
            return SizedBox();
            // return CategoryWidget(categoryImages[index]);
          },
        ),
      ),
    );
  }
}