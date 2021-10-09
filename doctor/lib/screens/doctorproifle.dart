import 'package:doctor/models/mainmodel.dart';
import 'package:doctor/models/reviews/reviewModel.dart';
import 'package:doctor/screens/booking.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/buttonwidget.dart';
import 'package:doctor/widgets/fav.dart';
import 'package:doctor/widgets/searchicon.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';



class DoctorProfile extends StatefulWidget {

  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant(
      builder: (context, child, MainModel model) {
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
            SearchButton(() {})
          ],
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              dataSection(model),
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
                  '${model.selectedDoctor!.reviews.length} Reviews',
                  style: primaryColorTextStyle,
                ),
              ),
              for(ReviewModel review in model.selectedDoctor!.reviews)
              reviewItem(review)
            ],
          ),
        ),
      );
      },
    );
  }
  reviewItem(ReviewModel review) {
    return ListTile(
      leading: CircleAvatar(
        minRadius: 30.0,
        maxRadius: 30.0,
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage('https://icon-library.com/images/user-png-icon/user-png-icon-16.jpg'),
      ),
      title: Text(
        '${review.userName}',
        style: primaryTextStyle,
      ),
      subtitle: Text(
        '${review.comment}',
        style: secondaryTextStyle,
      ),
      trailing: Text(
        '${review.rating}',
        style: primaryColorTextStyle,
      ),
    );
  }
  Container dataSection(MainModel model) {
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
                    image: NetworkImage(model.selectedDoctor!.drImage),
                    fit: BoxFit.fill
                  ),
                  borderRadius: BorderRadius.circular(10.0)
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 120,
                child: ListTile(
                  title: Text(
                    '${model.selectedDoctor!.drName}',
                    style: primaryTextStyle,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${model.selectedCategory!.title}',
                        style: secondaryTextStyle,
                      ),
                      Text(
                        '**** 4.9',
                        style: TextStyle(color: Colors.amber, fontSize: 17.0),
                      ),
                      Text(
                        '${model.selectedDoctor!.drPrice}\$',
                        style: primaryColorTextStyle,
                      ),
                    ],
                  ),
                  trailing: Fav(model.selectedDoctor!),
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