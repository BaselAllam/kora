import 'package:shared_preferences/shared_preferences.dart';


class Shared{

 static Future<void> saveToLocal(String key, {bool value = false}) async {

   SharedPreferences _sharedPrefrences = await SharedPreferences.getInstance();
   _sharedPrefrences.setBool(key, value);
 }


  static Future<bool> getFromLocal(String key) async {

    SharedPreferences _sharedPrefrences = await SharedPreferences.getInstance();
    bool? _value = _sharedPrefrences.getBool(key);
    return _value!;
  }


  Future<void> clearLocal() async {

    SharedPreferences _sharedPrefrences = await SharedPreferences.getInstance();
    _sharedPrefrences.clear();
  }
}