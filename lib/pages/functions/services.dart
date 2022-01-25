import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  final String servicename;
  Services({this.servicename});
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xFF345C5F),
          ),
        ),
        Text(servicename),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
