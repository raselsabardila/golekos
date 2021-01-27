import 'package:flutter/material.dart';

class StarComponents extends StatelessWidget {
  Color _color;

  StarComponents(this._color);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: this._color,
      size: 20,
    );
  }
}
