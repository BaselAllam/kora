import 'package:doctor/models/shared.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:doctor/models/doctors/doctorModel.dart';
import 'package:scoped_model/scoped_model.dart';



mixin DoctorController on Model{


  bool _isFavLoading = false;
  bool get isFavLoading => _isFavLoading;

  List<DoctorModel> _allFav = [];
  List<DoctorModel> get allFav => _allFav;


  addToFav(DoctorModel doctor) async {

    _isFavLoading = true;
    notifyListeners();

    Map<String, dynamic> _data = {
      'doctorName' : doctor.drName,
      'doctorImage' : doctor.drImage,
      'drPrice' : doctor.drPrice
    };

    http.Response _res = await http.post(Uri.parse('${Shared.domain}/fav.json'), body: json.encode(_data));

    Map<String, dynamic> _resData = json.decode(_res.body);

    doctor.isFav = true;
    doctor.id = _resData['name'];
    _allFav.add(doctor);

    _isFavLoading = false;
    notifyListeners();
  }

  removeFromFav(DoctorModel doctor) async {

    _isFavLoading = true;
    notifyListeners();

    http.Response _res = await http.delete(Uri.parse('${Shared.domain}/fav/${doctor.id}.json'));

    doctor.isFav = false;
    _allFav.removeWhere((DoctorModel doctorModel) {
      return doctor.id == doctorModel.id;
    });

    _isFavLoading = false;
    notifyListeners();
  }
}