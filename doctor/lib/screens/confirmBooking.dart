import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/buttonwidget.dart';
import 'package:doctor/widgets/header.dart';
import 'package:flutter/material.dart';



class ConfirmBooking extends StatefulWidget {

  @override
  _ConfirmBookingState createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {

PayOption options = PayOption.cash;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Confirm Booking',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            cardItem(
              Column(
                children: [
                  Header('Personal Data'),
                  cardItemItem('Full Name', 'Ahmed Mohmaed'),
                  cardItemItem('Mobile Number', '01010101'),
                ],
              ),
            ),
            cardItem(
              Column(
                children: [
                  Header('Booking Data'),
                  cardItemItem('Doctor Name', 'Ali Sayed'),
                  cardItemItem('Booking Data', '10-Aug-2021'),
                  cardItemItem('Booking Time', '10:00 AM'),
                  cardItemItem('Booking Fee', '200\$'),
                  cardItemItem('Doctor Location', 'Cairo, Nasr City'),
                ],
              ),
            ),
            cardItem(
              Column(
                children: [
                  Header('Payment Option'),
                  cardItemItem(
                    'Visa',
                    '*****955',
                    trailing: Radio<PayOption>(
                      groupValue: options,
                      value: PayOption.visa,
                      onChanged: (PayOption? value) {
                        setState(() {
                          options = value!;
                        });
                      },
                      activeColor: mainColor,
                    ),
                  ),
                  cardItemItem(
                    'Cash',
                    'Pay upon Arrival',
                    trailing: Radio<PayOption>(
                      groupValue: options,
                      value: PayOption.cash,
                      onChanged: (PayOption? value) {
                        setState(() {
                          options = value!;
                        });
                      },
                      activeColor: mainColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10.0),
              child: ButtonWidget(
                'Submit Request',
                Size(0, 50),
                mainColor,
                () {}
              ),
            )
          ],
        ),
      ),
    );
  }
  Card cardItem(Column data) {
    return Card(
      margin: EdgeInsets.all(10.0),
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


enum PayOption{
  visa, cash
}
