import 'package:doctor/demodata.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/categorywidget.dart';
import 'package:doctor/widgets/populardrwidget.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String, dynamic>> drawerData = [
    {
      'txt' : 'Wishlist',
      'icon' : Icons.favorite
    },
    {
      'txt' : 'Appointment',
      'icon' : Icons.bookmark
    },
    {
      'txt' : 'Settings',
      'icon' : Icons.settings
    },
    {
      'txt' : 'About Us',
      'icon' : Icons.info
    },
    {
      'txt' : 'Contact Us',
      'icon' : Icons.phone
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
          Icon(Icons.search)
        ],
      ),
      drawer: Drawer(
        child: Column(
            children: [
              DrawerHeader(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: NetworkImage('https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1095.jpg?size=626&ext=jpg'),
                      fit: BoxFit.fill
                    ),
                  ),
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: CircleAvatar(
                      minRadius: 30,
                      maxRadius: 30,
                      backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/44323531?v=4'),
                      backgroundColor: Colors.white,
                    ),
                    title: Text('Bassel Allam', style: primaryTextStyle),
                    subtitle: Text('My Profile', style: secondaryTextStyle),
                    trailing: Icon(Icons.arrow_forward_ios, color: primaryColor, size: 20,),
                  ),
                ),
              ),
              for(Map<String, dynamic> i in drawerData)
              ListTile(
                leading: Icon(i['icon'], color: primaryColor, size: 30),
                title: Text(i['txt'], style: primaryTextStyle),
                trailing: Icon(Icons.arrow_forward_ios, color: primaryColor, size: 20,),
              ),
            ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          item('Category'),
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
          item('Popular Doctor'),
          Container(
            height: 125.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: doctorImages.length,
              itemBuilder: (context, index) {
                return PopularDoctorWidget(doctorImages[index]);
              },
            ),
          ),
          item('Wishlisted Doctor')
        ],
      ),
    );
  }
  ListTile item(String title) {
    return ListTile(
      title: Text(
        '$title',
        style: primaryTextStyle,
      ),
      trailing: Text(
        'view all',
        style: primaryColorTextStyle,
      ),
    );
  }
}