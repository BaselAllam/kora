import 'package:doctor/models/doctors/doctorModel.dart';
import 'package:doctor/models/mainmodel.dart';
import 'package:doctor/screens/doctorproifle.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/fav.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';


class DoctorWidget extends StatefulWidget {

  final DoctorModel doctor;

  DoctorWidget(this.doctor);

  @override
  _DoctorWidgetState createState() => _DoctorWidgetState();
}

class _DoctorWidgetState extends State<DoctorWidget> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant(
      builder: (context, child, MainModel model) {
        return InkWell(
        onTap: () {
          model.selectDoctor(widget.doctor.drName);
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
                      image: NetworkImage(widget.doctor.drImage),
                      fit: BoxFit.fill
                    )
                  ),
                  alignment: Alignment.topRight,
                  child: Fav(widget.doctor)
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          '${widget.doctor.drName}',
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
                        '${widget.doctor.drPrice}\$ per/h',
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
      },
    );
  }
}