import 'package:flutter/material.dart';
import 'package:golekos/resources/components/DotComponents.dart';
import 'package:golekos/resources/components/IconComponents.dart';
import 'package:golekos/resources/components/IconSpecs.dart';
import 'package:golekos/resources/components/Reviewer.dart';
import 'package:golekos/resources/components/StarComponents.dart';
import 'package:golekos/resources/style/Style.dart';
import 'package:swipedetector/swipedetector.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Widget> _dots = [];

  List<Color> _dotsColor = [];

  List<String> _imgURL = [
    "https://images.unsplash.com/photo-1560111137-11374746a448?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NX",
    "https://images.unsplash.com/photo-1586527936446-43049e8e95be?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bW90ZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1507958197928-30dcc0147425?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vdGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1607445144724-702f1e11c8cb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjR8fG1vdGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  ];

  int _indexURL = 0;

  _DetailPageState() {
    for (var i = 0; i < this._imgURL.length; i++) {
      this._dotsColor.add((i == 0) ? Colors.white : Colors.transparent);
    }

    for (var i = 0; i < this._imgURL.length; i++) {
      this._dots.add(DotComponents(this._dotsColor[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              SwipeDetector(
                onSwipeLeft: () {
                  setState(() {
                    this._indexURL = (this._indexURL == 0)
                        ? this._indexURL = this._imgURL.length - 1
                        : this._indexURL -= 1;
                    
                    for (var i = 0; i < this._dotsColor.length; i++) {
                      if(i == this._indexURL) {
                        this._dotsColor[i] = Colors.white;
                      } else {
                        this._dotsColor[i] = Colors.transparent;
                      }
                    }
                  });
                },
                onSwipeRight: () {
                  setState(() {
                    this._indexURL = (this._indexURL == this._imgURL.length - 1)
                        ? this._indexURL = 0
                        : this._indexURL += 1;

                    for (var i = 0; i < this._dotsColor.length; i++) {
                      if(i == this._indexURL) {
                        this._dotsColor[i] = Colors.white;
                      } else {
                        this._dotsColor[i] = Colors.transparent;
                      }
                    }

                    print(this._dotsColor[0].toString());
                  });
                },
                child: Container(
                    padding: EdgeInsets.only(
                        top: 15, left: 15, right: 15, bottom: 85),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(this._imgURL[this._indexURL]),
                            fit: BoxFit.cover)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            IconComponents(Icons.arrow_back_ios_rounded, () {
                              Navigator.pop(context);
                            }),
                            IconComponents(Icons.thumb_up_alt_outlined, () {})
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: this._dots,
                        )
                      ],
                    )),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.5),
                padding:
                    EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 100),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Fuko Cozzy",
                              style: nameUserText,
                            ),
                            Text(
                              "Umum",
                              style: genderText,
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            StarComponents(Color(0xffFDB92F)),
                            StarComponents(Color(0xffFDB92F)),
                            StarComponents(Color(0xffFDB92F)),
                            StarComponents(Color(0xffFDB92F)),
                            StarComponents(primaryGrey),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Room Specs",
                      style: titleText.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: <Widget>[
                        IconSpecs(Icons.king_bed_outlined, "Master Bed", "3"),
                        Spacer(),
                        IconSpecs(Icons.bathtub_outlined, "Bathrooms", "2"),
                        Spacer(),
                        IconSpecs(Icons.kitchen_outlined, "kitchen", "3"),
                        Spacer()
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Happy Tenant",
                      style: titleText.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 15),
                    Reviewer("John Wick", "Cozy for freelancer", "5/5",
                        "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    Reviewer("Ujang Sekop", "Mantap ini mah", "3/5",
                        "https://images.unsplash.com/photo-1553830591-d8632a99e6ff?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fHVzZXJ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
                  ],
                ),
              )
            ],
          ),
        )),
        floatingActionButton: Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                blurRadius: 8,
                offset: Offset(0, -6),
                color: primaryBlack.withOpacity(0.05)),
          ]),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15, left: 15),
                child: Column(
                  children: <Widget>[
                    Text(
                      "\$1.435",
                      style: nameUserText,
                    ),
                    Text(
                      "/month",
                      style: genderText,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width / 1.37,
                height: double.infinity,
                color: primaryBlue,
                child: Center(
                  child: Text(
                    "BOOKING NOW",
                    style: nameUserText.copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
