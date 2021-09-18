import 'package:doctor/screens/confirmBooking.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/buttonwidget.dart';
import 'package:doctor/widgets/header.dart';
import 'package:flutter/material.dart';

class Booking extends StatefulWidget {

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Booking',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Header('Available Dates'),
            Container(height: 200.0,),
            Header('Available Time'),
            availableTime(),
          ],
        ),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        child: ButtonWidget(
          'Confirm Booking',
          Size(0, 50),
          mainColor,
          () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {return ConfirmBooking();}));
          }
        ),
      ),
    );
  }
 Container availableTime() {
    return Container(
      height: MediaQuery.of(context).size.height/4,
      margin: EdgeInsets.only(top: 10.0),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          childAspectRatio: 0.95
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return AvailableTimeItem();
        },
      ),
    );
  }
}



class AvailableTimeItem extends StatefulWidget {

  @override
  _AvailableTimeItemState createState() => _AvailableTimeItemState();
}

class _AvailableTimeItemState extends State<AvailableTimeItem> {

bool selected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        margin: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: selected == false ? Color(0xffc1d1d7) : mainColor,
        ),
        alignment: Alignment.center,
        child: Text(
          '10:00\n  AM',
          style: TextStyle(color: selected == false ? primaryColor : Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}