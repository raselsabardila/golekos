import 'package:flutter/material.dart';

class DotComponents extends StatelessWidget {
  Color _color;

  DotComponents(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: this._color,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(style: BorderStyle.solid, color: Colors.white)),
    );
  }
}