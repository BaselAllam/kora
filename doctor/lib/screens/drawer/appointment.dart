import 'package:doctor/screens/drawer/appointment/cancelled.dart';
import 'package:doctor/screens/drawer/appointment/complete.dart';
import 'package:doctor/screens/drawer/appointment/upcoming.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';



class Appointment extends StatefulWidget {

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> with TickerProviderStateMixin {

TabController? tabController;

@override
void initState() {
  tabController = TabController(initialIndex: 1, length: 3, vsync: this);
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Appointment',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
        actions: [
          SearchButton(() {})
        ],
        bottom: PreferredSize(
          preferredSize: Size(0.0, 50.0),
          child: TabBar(
            tabs: [
              Text('Complete'), Text('Upcoming'), Text('Cancelled')
            ],
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: mainColor
            ),
            controller: tabController,
            labelColor: Colors.white,
            labelStyle: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
            unselectedLabelStyle: primaryTextStyle,
            unselectedLabelColor: primaryColor,
          )
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: TabBarView(
          controller: tabController,
          children: [
            Complete(),
            Upcoming(),
            Cancelled()
          ],
        ),
      ),
    );
  }
}