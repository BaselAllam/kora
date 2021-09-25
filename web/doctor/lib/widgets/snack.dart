import 'package:flutter/material.dart';



SnackBar snack(Color color, String txt) {
  return SnackBar(
    backgroundColor: color,
    content: Text('$txt'),
    duration: Duration(seconds: 3),
  );
}