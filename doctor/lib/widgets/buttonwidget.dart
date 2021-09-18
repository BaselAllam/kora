import 'package:flutter/material.dart';



class ButtonWidget extends StatefulWidget {
  
  final String txt;
  final Size size;
  final Color color;
  final Function onTap;

  ButtonWidget(this.txt, this.size, this.color, this.onTap);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        '${widget.txt}',
        style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold),
      ),
      style: TextButton.styleFrom(
        backgroundColor: widget.color,
        fixedSize: widget.size,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))
      ),
      onPressed: () {
        widget.onTap();
      },
    );
  }
}