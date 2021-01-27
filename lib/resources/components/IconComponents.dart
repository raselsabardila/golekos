import 'package:flutter/material.dart';

class IconComponents extends StatelessWidget {
  IconData _icon;
  Function _action;

  IconComponents(this._icon, this._action);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this._action,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(100)),
        child: Center(
          child: Icon(
            this._icon,
            size: 20,
          ),
        ),
      ),
    );
  }
}
