import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkhood/pages/startingScreen/homeSkipPages.dart';
import 'package:monkhood/pages/startingScreen/logoAnimationPage.dart';



class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  PageController pageController2 = new PageController();
  bool marked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: pageController2,
          children: [
            LogoAnimationPage(),
            HomeSkipPages(),
          ],
        ),
      ),
      theme: ThemeData(
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
            headline1: TextStyle(
          color: Colors.black,
          fontFamily: 'Montserrat',
          fontSize: 10,
        )),
      ),
    );
  }
}




