import 'package:doctor/models/categories/categoryModel.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


mixin CategoryController on Model{

  List<CategoryModel> _allCategories = [];
  List<CategoryModel> get allCategories => _allCategories;


  Future<void> getCategories() async {

    http.Response _res = await http.get(Uri.parse('https://doctor-327311-default-rtdb.firebaseio.com/categories.json'));
    
    Map<String, dynamic> _data = json.decode(_res.body);
    
    _data.forEach((key, value) {
      CategoryModel _newCategory = CategoryModel(key, value['categoryImage'], value['categoryName'], []);
      _allCategories.add(_newCategory);
    });

    notifyListeners();
    
  }

}





// Scoped Model
    // Model => ability to share data and notifyListeners
    // ScopedModel => top of app tree
    // ScopedModelDecendent => parent for widget which need to listen on changes



    // https://i.pinimg.com/originals/49/06/24/4906246fd15511bfff1191ee4f55fb22.jpg