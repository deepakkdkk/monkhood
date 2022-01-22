import 'package:flutter/material.dart';
import 'package:monkhood/pages/home_page.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Message',
        ),
      ),
      body: Center(
        child: Text("It's chat screen"),
      ),
    );
  }
}
