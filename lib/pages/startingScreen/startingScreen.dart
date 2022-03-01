import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkhood/pages/startingScreen/homeSkipPages.dart';
import 'package:monkhood/pages/startingScreen/logoAnimationPage.dart';

class StartingScreen extends StatefulWidget {
  final bool showHome;
  StartingScreen(this.showHome);
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen>
    with SingleTickerProviderStateMixin {
  PageController pageController2 = new PageController(initialPage: 0);

  AnimationController _animationController;
  // Animation<double> _nextPage;
  int _currentPage = 0;
  bool marked = false;

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    // _nextPage = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.addListener(() {
      if (_animationController.status == AnimationStatus.completed) {
        _animationController.reset(); //Reset the controller
        final int page = 2; //Number of pages in your PageView
        if (_currentPage < page) {
          _currentPage++;
          pageController2.animateToPage(_currentPage,
              duration: Duration(milliseconds: 1000),
              curve: Curves.easeInOut);
        } else {
          _currentPage = 0;
        }
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    print('animation disposed starting');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    // print(_nextPage.value);
    print('hello');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            controller: pageController2,

            // allowImplicitScrolling: true,
            onPageChanged: (value) {
              _animationController.forward();
            },
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                print('index starting 0');
                return LogoAnimationPage();
              } else if (index == 1) {
                print('index starting 1');
                return HomeSkipPages(widget.showHome);
              } else {
                return Container(
                  child: Text('blank'),
                );
              }
            }),
        // body: PageView(

        //   controller: pageController2,
        //   children: [
        //     LogoAnimationPage(),
        //     HomeSkipPages(widget.showHome),
        //   ],
        // ),
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
