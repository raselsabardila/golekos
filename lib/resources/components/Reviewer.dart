import 'package:flutter/material.dart';
import 'package:golekos/resources/style/Style.dart';

class Reviewer extends StatelessWidget {
  String _name, _review, _rate, _imgURL;

  Reviewer(this._name, this._review, this._rate, this._imgURL);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: NetworkImage(this._imgURL), fit: BoxFit.cover)),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this._name,
                style: nameListText,
              ),
              Text(
                this._review,
                style: genderText,
              )
            ],
          ),
          Spacer(),
          Text(
            this._rate,
            style: nameListText,
          ),
          SizedBox(
            width: 3,
          ),
          Icon(Icons.star, color: Color(0xffFDB92F)),
        ],
      ),
    );
  }
}
