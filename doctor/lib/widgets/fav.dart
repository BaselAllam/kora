import 'package:flutter/material.dart';




class Fav extends StatefulWidget {

  @override
  _FavState createState() => _FavState();
}

class _FavState extends State<Fav> {

bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isFav == false ? Icons.favorite_border : Icons.favorite),
      color: Colors.red,
      iconSize: 20.0,
      onPressed: () {
        setState(() {
          isFav = !isFav;
        });
      },
    );
  }
}