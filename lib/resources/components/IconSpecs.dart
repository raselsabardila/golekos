import 'package:flutter/material.dart';
import 'package:golekos/resources/style/Style.dart';

class IconSpecs extends StatelessWidget {
  IconData _icon;
  String _text, _count;

  IconSpecs(this._icon, this._text, this._count);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              this._icon,
              size: 35,
              color: Color(0xffA07FFA),
            ),
            SizedBox(width: 3),
            Text(
              this._count,
              style: titleText,
            )
          ],
        ),
        Text(
          this._text,
          style: genderText,
        )
      ],
    );
  }
}
