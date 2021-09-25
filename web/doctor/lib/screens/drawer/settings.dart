import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/header.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';



class Settings extends StatefulWidget {

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

Icon trailingIcon = Icon(Icons.arrow_forward_ios, color: primaryColor, size: 20.0);

bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Settings',
          style: primaryTextStyle
        ),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
        actions: [
          SearchButton(() {})
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/3.5,
              width: MediaQuery.of(context).size.width/3,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg'),
                  fit: BoxFit.fill
                )
              ),
            ),
            Header('Account'),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              height: isPressed == false ? 1.0 : MediaQuery.of(context).size.height/3.3,
              child: isPressed == false ? SizedBox() :
               Column(
                children: [
                  item('Email', Icons.email, trailingIcon, () {}),
                  item('User Name', Icons.account_circle, trailingIcon, () {}),
                  item('Mobile Number', Icons.phone, trailingIcon, () {}),
                  item('Address', Icons.location_on, trailingIcon, () {}),
                ],
              ),
            ),
            item('Change Password', Icons.lock, trailingIcon, () {}),
            item('Payment', Icons.payment, trailingIcon, () {}),
            item('Sign Out', Icons.exit_to_app, SizedBox(), () {}),
            InkWell(
              onTap: () {
                setState(() {
                  isPressed = !isPressed;
                });
              },
              child: Text(
                isPressed == false ? 
                'More Option' : 'Less Option',
                style: TextStyle(color: mainColor, fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
            ),
            item('Currency', Icons.attach_money, trailingIcon, () {}),
            item('Language', Icons.language, trailingIcon, () {}),
          ],
        ),
      ),
    );
  }
  ListTile item(String title, IconData leadingIcon, Widget trailing, Function onPressed) {
    return ListTile(
      title: Text(
        title,
        style: primaryTextStyle,
      ),
      leading: Icon(leadingIcon, color: primaryColor, size: 25.0),
      trailing: trailing,
      onTap: () {
        onPressed();
      },
    );
  }
}