import 'package:doctor/demodata.dart';
import 'package:doctor/screens/allcategory.dart';
import 'package:doctor/screens/allpopular.dart';
import 'package:doctor/screens/drawer/aboutus.dart';
import 'package:doctor/screens/drawer/appointment.dart';
import 'package:doctor/screens/drawer/contactus.dart';
import 'package:doctor/screens/drawer/profile.dart';
import 'package:doctor/screens/drawer/settings.dart';
import 'package:doctor/screens/drawer/wishlist.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/categorywidget.dart';
import 'package:doctor/widgets/doctorwidget.dart';
import 'package:doctor/widgets/populardrwidget.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String, dynamic>> drawerData = [
    {
      'txt' : 'Wishlist',
      'icon' : Icons.favorite,
      'class' : Wishlist()
    },
    {
      'txt' : 'Appointment',
      'icon' : Icons.bookmark,
      'class' : Appointment()
    },
    {
      'txt' : 'Settings',
      'icon' : Icons.settings,
      'class' : Settings()
    },
    {
      'txt' : 'About Us',
      'icon' : Icons.info,
      'class' : AboutUs()
    },
    {
      'txt' : 'Contact Us',
      'icon' : Icons.phone,
      'class' : ContactUs()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Welcome',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
        actions: [
          SearchButton()
        ],
      ),
      drawer: Drawer(
        child: Column(
            children: [
              DrawerHeader(
                child: Container(
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: CircleAvatar(
                      minRadius: 30,
                      maxRadius: 30,
                      backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/44323531?v=4'),
                      backgroundColor: Colors.white,
                    ),
                    title: Text('Bassel Allam', style: primaryTextStyle),
                  ),
                ),
              ),
              for(Map<String, dynamic> i in drawerData)
              ListTile(
                leading: Icon(i['icon'], color: primaryColor, size: 30),
                title: Text(i['txt'], style: primaryTextStyle),
                trailing: Icon(Icons.arrow_forward_ios, color: primaryColor, size: 20,),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {return i['class'];}));
                },
              ),
            ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          item('Category', AllCategory()),
          Container(
            height: 125.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryImages.length,
              itemBuilder: (context, index) {
                return CategoryWidget(categoryImages[index]);
              },
            ),
          ),
          item('Popular Doctor', AllPopular()),
          Container(
            height: MediaQuery.of(context).size.height/4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: doctorImages.length,
              itemBuilder: (context, index) {
                return PopularDoctorWidget(doctorImages[index]);
              },
            ),
          ),
          item('Wishlisted Doctor', Wishlist()),
          for(String img in doctorImages)
          DoctorWidget(img),
        ],
      ),
    );
  }
  ListTile item(String title, Widget screen) {
    return ListTile(
      title: Text(
        '$title',
        style: primaryTextStyle,
      ),
      trailing: Text(
        'view all',
        style: primaryColorTextStyle,
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {return screen;}));
      },
    );
  }
}