import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:flutter/material.dart';



Container field(String label, IconData icon, TextInputType type, TextEditingController controller, Key key, {bool secure = false, Widget suffix = const SizedBox()}) {
  return Container(
    height: 70.0,
    margin: EdgeInsets.all(10.0),
    child: TextFormField(
      key: key,
      validator: (value) {
        if(value!.isEmpty) {
          return 'This field required!';
        }
      },
      decoration: InputDecoration(
        border: inputBorder(secondaryColor),
        focusedBorder: inputBorder(mainColor),
        errorBorder: inputBorder(Colors.red),
        labelText: '$label',
        labelStyle: secondaryTextStyle,
        prefixIcon: Icon(icon, color: secondaryColor, size: 20.0),
        suffixIcon: suffix
      ),
      keyboardType: type,
      obscureText: secure,
      controller: controller,
    ),
  );
}


OutlineInputBorder inputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(color: color, width: 1.5)
    );
  }