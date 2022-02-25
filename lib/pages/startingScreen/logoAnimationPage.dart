import 'package:flutter/material.dart';

class LogoAnimationPage extends StatefulWidget {
  @override
  _LogoAnimationPageState createState() => _LogoAnimationPageState();
}

class _LogoAnimationPageState extends State<LogoAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0XFF345C5F),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 100,
                width: 100,
                image: AssetImage('assets/monkhood_logo.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image(
                  image: AssetImage('assets/MonkHood.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
