import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/buttonwidget.dart';
import 'package:doctor/widgets/header.dart';
import 'package:flutter/material.dart';



class FilterScreen extends StatefulWidget {

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

bool availableToday = false;

FilterRating filterRating = FilterRating.ratingHighLow;

FilterPrice filterPrice = FilterPrice.priceLowHigh;

FilterGender filterGender = FilterGender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Filter',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Header('Availability'),
            cardItemItem(
              'Available Today',
              '',
              trailing: Checkbox(
                value: availableToday,
                checkColor: Colors.white,
                hoverColor: mainColor,
                activeColor: mainColor,
                onChanged: (value) {
                  setState(() {
                    availableToday = value!;
                  });
                }
              )
            ),
            Header('More Options'),
            cardItemItem(
              'Rating ( High to Low )', 
              '',
              trailing: Radio<FilterRating>(
                groupValue: filterRating,
                value: FilterRating.ratingHighLow,
                onChanged: (FilterRating? value) {
                  setState(() {
                    filterRating = value!;
                  });
                },
                activeColor: mainColor,
              ),
            ),
            cardItemItem(
              'Rating ( Low to High )', 
              '',
              trailing: Radio<FilterRating>(
                groupValue: filterRating,
                value: FilterRating.ratingLowHigh,
                onChanged: (FilterRating? value) {
                  setState(() {
                    filterRating = value!;
                  });
                },
                activeColor: mainColor,
              ),
            ),
            cardItemItem(
              'Price ( High to Low )', 
              '',
              trailing: Radio<FilterPrice>(
                groupValue: filterPrice,
                value: FilterPrice.priceHightLow,
                onChanged: (FilterPrice? value) {
                  setState(() {
                    filterPrice = value!;
                  });
                },
                activeColor: mainColor,
              ),
            ),
            cardItemItem(
              'Price ( High to Low )', 
              '',
              trailing: Radio<FilterPrice>(
                groupValue: filterPrice,
                value: FilterPrice.priceLowHigh,
                onChanged: (FilterPrice? value) {
                  setState(() {
                    filterPrice = value!;
                  });
                },
                activeColor: mainColor,
              ),
            ),
            Header('Gender'),
            cardItemItem(
              'Male',
              '',
              trailing: Radio<FilterGender>(
                groupValue: filterGender,
                value: FilterGender.male,
                onChanged: (FilterGender? value) {
                  setState(() {
                    filterGender = value!;
                  });
                },
                activeColor: mainColor,
              ),
            ),
            cardItemItem(
              'Female', 
              '',
              trailing: Radio<FilterGender>(
                groupValue: filterGender,
                value: FilterGender.female,
                onChanged: (FilterGender? value) {
                  setState(() {
                    filterGender = value!;
                  });
                },
                activeColor: mainColor,
              ),
            ),
            ButtonWidget(
              'Apply Filter',
              Size(0.0, 40.0),
              mainColor,
              () {}
            )
          ],
        ),
      ),
    );
  }
  Card cardItem(Column data) {
    return Card(
      margin: EdgeInsets.all(5.0),
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: data
    );
  }
  ListTile cardItemItem(String title, String subTitle, {Widget? trailing}) {
    return ListTile(
      title: Text(
        '$title',
        style: primaryTextStyle,
      ),
      subtitle: Text(
        '$subTitle',
        style: secondaryTextStyle,
      ),
      trailing: trailing,
    );
  }
}


enum FilterRating{
  ratingHighLow, ratingLowHigh
}

enum FilterPrice{
  priceHightLow, priceLowHigh
}

enum FilterGender{
  male, female
}