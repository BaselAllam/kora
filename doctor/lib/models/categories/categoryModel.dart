

import 'package:doctor/models/doctors/doctorModel.dart';

class CategoryModel{

  String id;
  String image;
  String title;
  List<DoctorModel> doctors;

  CategoryModel(this.id, this.image, this.title, this.doctors);
}