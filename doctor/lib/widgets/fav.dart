import 'package:doctor/models/doctors/doctorModel.dart';
import 'package:doctor/models/mainmodel.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';


class Fav extends StatefulWidget {

   DoctorModel doctorModel;

  Fav(this.doctorModel);

  @override
  _FavState createState() => _FavState();
}

class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant(
      builder: (context, child, MainModel model) {
        return IconButton(
          icon: Icon(widget.doctorModel.isFav == false ? Icons.favorite_border : Icons.favorite),
          color: Colors.red,
          iconSize: 20.0,
          onPressed: () {
            if(widget.doctorModel.isFav == true) {
              model.removeFromFav(widget.doctorModel);
            }else{
              model.addToFav(widget.doctorModel);
            }
          },
        );
      },
    );
  }
}