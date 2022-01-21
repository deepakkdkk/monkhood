import 'package:flutter/material.dart';

Widget buildSheet() => DraggableScrollableSheet(
  initialChildSize: 0.6,
  minChildSize: 0.5,
  maxChildSize: 0.7,
  builder: (_, controller) => Container(
  
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
    ),
  ),
  padding: EdgeInsets.all(10),
  child: ListView(
    controller: controller,
    children: [
      Text('checking first text box ',
      style: TextStyle(
        fontSize: 80,
      ),),
      Text('checking second text box',
      style: TextStyle(
        fontSize: 80,
      ),),
    ],
  ),
),);