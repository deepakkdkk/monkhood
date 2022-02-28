import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:monkhood/bottomBar.dart';
import 'package:monkhood/pages/startingScreen/startingScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(showHome));
}

class MyApp extends StatefulWidget {
  final bool showHome;
  MyApp(this.showHome);
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
      home: widget.showHome ? BottomTabBar() : StartingScreen(widget.showHome),
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
