import 'package:flutter/material.dart';
import 'package:golekos/resources/components/ListItem.dart';
import 'package:golekos/resources/style/Style.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 10, left: 5, right: 20),
            color: bgColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: primaryBlack,
                        ),
                        onPressed: () {}),
                    Text(
                      "Hello There!!",
                      style: nameUserText,
                    ),
                    Spacer(),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 0, top: 5),
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.only(left: 15, top: 40),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 16,
                            offset: Offset(0, 8),
                            color: primaryBlue.withOpacity(0.01))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Find your next home",
                      border: InputBorder.none,
                      hintStyle: genderText.copyWith(
                          fontSize: 18,
                          color: primaryBlack.withOpacity(0.3),
                          fontWeight: FontWeight.w500),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 25,
                        color: primaryBlack.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(top: 30, left: 15),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/card.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1587906697341-bfbde76785c7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGF5bWVudHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Payment Safety",
                            style: titleText.copyWith(color: Colors.white),
                          ),
                          Text(
                            "Kindly only on our service.",
                            style: genderText.copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    "Most People Go",
                    style: titleText,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 15),
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 16,
                            offset: Offset(0, 8),
                            color: primaryBlue.withOpacity(0.01))
                      ]),
                  child: Column(
                    children: <Widget>[
                      ListItem("Fukko Cozy", "Women", "55", "month",
                          "https://images.unsplash.com/photo-1560111137-11374746a448?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bW90ZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                      ListItem("Blue Fast", "Public", "85", "month",
                          "https://images.unsplash.com/photo-1556543365-e96b49f64ff2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                      ListItem("Motel Paradise", "Public", "150", "month",
                          "https://images.unsplash.com/photo-1501103777042-0aeb4df8ff8f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzN8fG1vdGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                      ListItem("Outdoor Sky", "Women", "55", "month",
                          "https://images.unsplash.com/photo-1551867356-29c991e1e8d7?ixid=https://images.unsplash.com/photo-1587906697341-bfbde76785c7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGF5bWVudHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60MXwxMjA3fDB8MHxzZWFyY2h8NTJ8fG1vdGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
                    ],
                  ),
                ),
                SizedBox(height: 110)
              ],
            ),
          )),
          floatingActionButton: Container(
            padding: EdgeInsets.symmetric(vertical: 17, horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: 80,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  blurRadius: 8,
                  offset: Offset(0, -6),
                  color: primaryBlack.withOpacity(0.05)),
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: primaryBlue.withOpacity(0.2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        color: primaryBlue,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "HOME",
                        style: nameListText.copyWith(color: primaryBlue),
                      )
                    ],
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.thumb_up,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.sports_basketball,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.supervised_user_circle,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    onPressed: null),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        )));
  }
}
