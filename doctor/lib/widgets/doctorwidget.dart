import 'package:doctor/screens/doctorproifle.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/fav.dart';
import 'package:flutter/material.dart';


class DoctorWidget extends StatefulWidget {

  final String img;

  DoctorWidget(this.img);

  @override
  _DoctorWidgetState createState() => _DoctorWidgetState();
}

class _DoctorWidgetState extends State<DoctorWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {return DoctorProfile();}));
      },
      child: Card(
        margin: EdgeInsets.all(10.0),
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Container(
          child: Column(
            children: [
              Container(
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: NetworkImage(widget.img),
                    fit: BoxFit.fill
                  )
                ),
                alignment: Alignment.topRight,
                child: Fav()
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Doctor Name',
                        style: primaryTextStyle,
                      ),
                    Text(
                      '**** 4.9',
                      style: primaryColorTextStyle,
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '10 Years Experience',
                      style: primaryColorTextStyle,
                    ),
                    Text(
                      '20\$ per/h',
                      style: primaryColorTextStyle,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}