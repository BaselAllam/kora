import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';



class Settings extends StatefulWidget {

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

Icon trailingIcon = Icon(Icons.arrow_forward_ios, color: primaryColor, size: 20.0);

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
          SearchButton()
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
                color: mainColor
              ),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Account',
                style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            item('Change Password', Icons.lock, trailingIcon, () {}),
            item('Payment', Icons.payment, trailingIcon, () {}),
            item('Sign Out', Icons.exit_to_app, SizedBox(), () {}),
            InkWell(
              onTap: () {},
              child: Text(
                'More Option',
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