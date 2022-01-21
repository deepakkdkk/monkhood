import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String texting;
  Heading(this.texting);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        texting,
        style: TextStyle(
          fontSize: 15,
          color: Color(0xFF608386),
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
