import 'package:doctor/screens/booking.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/buttonwidget.dart';
import 'package:doctor/widgets/fav.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';



class DoctorProfile extends StatefulWidget {

  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Doctor Profile',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
        actions: [
          SearchButton()
        ],
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            dataSection(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListTile(
                title: Text(
                  'Bio',
                  style: primaryTextStyle,
                ),
                subtitle: Text(
                  'blalblalallablbllablalblalallablblla\nblalblalallablbllablalblalallablbllablalblalallablblla',
                  style: primaryTextStyle,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Reviews',
                style: primaryTextStyle,
              ),
              trailing: Text(
                '5 Reviews',
                style: primaryColorTextStyle,
              ),
            ),
            for(int i = 0; i < 5; i++)
            reviewItem()
          ],
        ),
      ),
    );
  }
  reviewItem() {
    return ListTile(
      leading: CircleAvatar(
        minRadius: 30.0,
        maxRadius: 30.0,
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage('https://icon-library.com/images/user-png-icon/user-png-icon-16.jpg'),
      ),
      title: Text(
        'User Name',
        style: primaryTextStyle,
      ),
      subtitle: Text(
        'user review blalbla',
        style: secondaryTextStyle,
      ),
      trailing: Text(
        '4.9',
        style: primaryColorTextStyle,
      ),
    );
  }
  Container dataSection() {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg'),
                    fit: BoxFit.fill
                  ),
                  borderRadius: BorderRadius.circular(10.0)
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 120,
                child: ListTile(
                  title: Text(
                    'Doctor Name',
                    style: primaryTextStyle,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Specializtion',
                        style: secondaryTextStyle,
                      ),
                      Text(
                        '**** 4.9',
                        style: TextStyle(color: Colors.amber, fontSize: 17.0),
                      ),
                      Text(
                        '20\$',
                        style: primaryColorTextStyle,
                      ),
                    ],
                  ),
                  trailing: Fav(),
                ),
              )
            ],
          ),
          ButtonWidget(
            'Book',
            Size(200, 30),
            mainColor,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {return Booking();}));
            }
          ),
        ],
      ),
    );
  }
}