import 'package:doctor/models/categories/categoryController.dart';
import 'package:doctor/models/doctors/doctorController.dart';
import 'package:doctor/models/reviews/reviewController.dart';
import 'package:scoped_model/scoped_model.dart';



class MainModel extends Model with CategoryController, DoctorController, ReviewController{}