import 'dart:async';

import 'package:flutter/material.dart';
import 'package:golekos/resources/style/Style.dart';
import 'package:golekos/resources/views/HomePage.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  BuildContext route;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height / 7),
            Lottie.network(
                'https://assets6.lottiefiles.com/private_files/lf30_75f9senm.json'),
            Spacer(),
            Text(
              "Rasel",
              style: titleText.copyWith(
                  fontWeight: FontWeight.w500,
                  color: primaryBlack.withOpacity(0.3)),
            ),
            Text(
              "Golekos",
              style: headerText.copyWith(color: primaryBlue, letterSpacing: 2),
            ),
            SizedBox(height: 20)
          ],
        )),
      ),
    );
  }
}
