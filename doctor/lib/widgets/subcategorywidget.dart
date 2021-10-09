import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:flutter/material.dart';



class SubDoctorWidget extends StatefulWidget {

  final String img;
  final Color color;
  final String txt;

  SubDoctorWidget(this.img, this.color, this.txt);

  @override
  _SubDoctorWidgetState createState() => _SubDoctorWidgetState();
}

class _SubDoctorWidgetState extends State<SubDoctorWidget> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Container(
      margin: EdgeInsets.all(10.0),
      child: MediaQuery.of(context).size.width <= 350 ? Column(
        children: [
          Container(
            width: 75.0,
            height: 100.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(widget.img),
                fit: BoxFit.fill
              )
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' Doctor Name    ',
                      style: TextStyle(color: mainColor, fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        widget.txt,
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 7.0),
                child: Text(
                  ' Doctor Specialize',
                  style: secondaryTextStyle
                ),
              ),
              Row(
                children: [
                  Icon(Icons.calendar_today, color: secondaryColor, size: 15.0),
                  Text(
                    ' 20-aug-2021  ',
                    style: secondaryTextStyle
                  ),
                  Icon(Icons.watch, color: secondaryColor, size: 15.0),
                  Text(
                    ' 15:30  ',
                    style: secondaryTextStyle
                  ),
                  Icon(Icons.attach_money, color: secondaryColor, size: 15.0),
                  Text(
                    ' 200\$',
                    style: secondaryTextStyle
                  ),
                ],
              )
            ],
          )
        ],
      ) : Row(
        children: [
          Container(
            width: 75.0,
            height: 100.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(widget.img),
                fit: BoxFit.fill
              )
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' Doctor Name    ',
                      style: TextStyle(color: mainColor, fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        widget.txt,
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 7.0),
                child: Text(
                  ' Doctor Specialize',
                  style: secondaryTextStyle
                ),
              ),
              Row(
                children: [
                  Icon(Icons.calendar_today, color: secondaryColor, size: 15.0),
                  Text(
                    ' 20-aug-2021  ',
                    style: secondaryTextStyle
                  ),
                  Icon(Icons.watch, color: secondaryColor, size: 15.0),
                  Text(
                    ' 15:30  ',
                    style: secondaryTextStyle
                  ),
                  Icon(Icons.attach_money, color: secondaryColor, size: 15.0),
                  Text(
                    ' 200\$',
                    style: secondaryTextStyle
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}