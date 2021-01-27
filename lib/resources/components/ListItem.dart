import 'package:flutter/material.dart';
import 'package:golekos/resources/style/Style.dart';
import 'package:golekos/resources/views/DetailPage.dart';

class ListItem extends StatelessWidget {
  String _nameItem, _gender, _price, _range, _imgURL;

  ListItem(
      this._nameItem, this._gender, this._price, this._range, this._imgURL);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailPage();
        }));
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 25),
        child: Row(
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(this._imgURL), fit: BoxFit.cover)),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this._nameItem,
                  style: nameListText,
                ),
                Text(
                  this._gender,
                  style: genderText,
                )
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  '\$${this._price}',
                  style: nameListText,
                ),
                Text(
                  "/${this._range}",
                  style: genderText,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
