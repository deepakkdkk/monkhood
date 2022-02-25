import 'package:flutter/material.dart';
import 'package:monkhood/pages/startingScreen/loginPage.dart';
import 'package:monkhood/pages/startingScreen/signUpPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomeSkipPages extends StatefulWidget {
  @override
  _HomeSkipPagesState createState() => _HomeSkipPagesState();
}

class _HomeSkipPagesState extends State<HomeSkipPages> {
  PageController pageController = new PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: pageController,
              children: [
                StartingScreenImage(
                    'startingscreen2', 'From finding a perfect home'),
                StartingScreenImage(
                    'startingscreen3', 'and getting it furnished'),
                StartingScreenImage(
                    'startingscreen4', 'to maintaining it in & out'),
                StartingScreenImage2('startingscreen5',
                    'Everything that helps you move away from home easily'),
              ],
            ),
            Positioned(
              bottom: 20,
              right: MediaQuery.of(context).size.width / 3,
              left: MediaQuery.of(context).size.width / 3,
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: 4,
                        // textDirection: TextDirection.rtl,
                        // effect: ScrollingDotsEffect(),
                        effect: SlideEffect(
                            spacing: 8.0,
                            radius: 4.0,
                            dotWidth: 24.0,
                            dotHeight: 16.0,
                            paintStyle: PaintingStyle.stroke,
                            strokeWidth: 1.5,
                            dotColor: Colors.grey,
                            activeDotColor: Colors.indigo),
                        onDotClicked: (index) {
                          return pageController.animateToPage(index,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.bounceInOut);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StartingScreenImage extends StatefulWidget {
  final String s;
  final String text;
  StartingScreenImage(this.s, this.text);

  @override
  _StartingScreenImageState createState() => _StartingScreenImageState();
}

class _StartingScreenImageState extends State<StartingScreenImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Image(
            image: AssetImage(
              'assets/${widget.s}.png',
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
        Text(
          '${widget.text}',
          style: TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat'),
        ),
      ],
    );
  }
}

class StartingScreenImage2 extends StatefulWidget {
  final String s;
  final String text;
  StartingScreenImage2(this.s, this.text);
  @override
  _StartingScreenImage2State createState() => _StartingScreenImage2State();
}

class _StartingScreenImage2State extends State<StartingScreenImage2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Image(
            image: AssetImage(
              'assets/${widget.s}.png',
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
        Text(
          '${widget.text}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
        Positioned(
          bottom: 20,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text('Login')),
        ),
        Positioned(
          bottom: 60,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: Text('SignUp')),
        ),
      ],
    );
  }
}
