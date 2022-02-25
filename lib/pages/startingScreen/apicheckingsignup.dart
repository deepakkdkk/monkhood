import 'package:flutter/material.dart';

class ApiSignup extends StatefulWidget {
  final name;
  final email;
  final password;
  ApiSignup(this.name, this.email, this.password);
  @override
  _ApiSignupState createState() => _ApiSignupState();
}

class _ApiSignupState extends State<ApiSignup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(children: [
            Container(child: 
            Row(children: [
              Text(widget.name),
              Text(widget.email),
              Text(widget.password)
            ],),)
          ],),
        ),
      ),
    );
  }
}