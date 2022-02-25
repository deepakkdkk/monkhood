import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:monkhood/pages/startingScreen/startingScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF345C5F),
        fontFamily: "Montserrat",
      ),
      home: StartingScreen(),
    );
  }
}

Widget bottombar(String selectedItem) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 9, 0, 9),
      child: Image(
        width: 100,
        image: AssetImage(selectedItem),
      ),
    ),
  );
}
