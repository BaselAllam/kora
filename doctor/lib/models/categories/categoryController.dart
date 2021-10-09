import 'package:doctor/models/categories/categoryModel.dart';
import 'package:doctor/models/doctors/doctorModel.dart';
import 'package:doctor/models/reviews/reviewModel.dart';
import 'package:doctor/models/shared.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


mixin CategoryController on Model{

  List<CategoryModel> _allCategories = [];
  List<CategoryModel> get allCategories => _allCategories;

  bool _isGetCategoriesLoading = false;
  bool get isGetCategoriesLoading => _isGetCategoriesLoading;


  Future<void> getCategories() async {

    _isGetCategoriesLoading = true;
    notifyListeners();

    http.Response _res = await http.get(Uri.parse('${Shared.domain}/categories.json'));
    
    Map<String, dynamic> _data = json.decode(_res.body);
    
    _data.forEach((key, value) {
      CategoryModel _newCategory = CategoryModel(key, value['categoryImage'], value['categoryName'], []);
      value['doctors'].forEach((i) {
        DoctorModel _newDoctor = DoctorModel('', i['doctorName'], i['doctorImage'], i['doctorPrice'], [], false);
        i['doctorReviews'].forEach((x) {
          ReviewModel _newReview = ReviewModel('', x['userName'], x['comment'], x['rating']);
          _newDoctor.reviews.add(_newReview);
        });
        _newCategory.doctors.add(_newDoctor);
      });
      _allCategories.add(_newCategory);
    });

    _isGetCategoriesLoading = false;
    notifyListeners();
    
  }

  CategoryModel? selectedCategory;

  getChoosedCategory(String categoryId) {

    for(CategoryModel categoryModel in _allCategories) {
      if(categoryModel.id == categoryId) {
        selectedCategory = categoryModel;
        break;
      }
    }
    notifyListeners();
  }


  DoctorModel? selectedDoctor;

  selectDoctor(String drName) {

    for(DoctorModel doctor in selectedCategory!.doctors) {
      if(doctor.drName == drName) {
        selectedDoctor = doctor;
        break;
      }
    }

    notifyListeners();
  }

}