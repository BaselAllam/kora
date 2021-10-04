


import 'package:doctor/models/reviews/reviewModel.dart';

class DoctorModel{

  String id;
  String drName;
  String drImage;
  num drPrice;
  List<ReviewModel> reviews;

  DoctorModel(this.id, this.drName, this.drImage, this.drPrice, this.reviews);
}