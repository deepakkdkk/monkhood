import 'package:flutter/material.dart';
import 'package:monkhood/bottomBar.dart';
import 'package:monkhood/pages/startingScreen/loginPage.dart';
import 'package:monkhood/pages/startingScreen/signUpPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeSkipPages extends StatefulWidget {
  final bool showHome;
  HomeSkipPages(this.showHome);
  @override
  _HomeSkipPagesState createState() => _HomeSkipPagesState();
}

class _HomeSkipPagesState extends State<HomeSkipPages>
    with SingleTickerProviderStateMixin {
  PageController pageController = new PageController(
    initialPage: 0,
  );

  AnimationController _animationController;
  // Animation<double> _nextPage;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    // _nextPage = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.addListener(() {
      if (_animationController.status == AnimationStatus.completed) {
        _animationController.reset(); //Reset the controller
        final int page = 4; //Number of pages in your PageView
        if (_currentPage < page) {
          _currentPage++;
          pageController.animateToPage(_currentPage,
              duration: Duration(milliseconds: 1000), curve: Curves.easeInOut);

          print(_currentPage);
        } else {
          _currentPage = 0;
        }
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    print('animation disposed home');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    // print(_nextPage.value);
    print('hello2');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              controller: pageController,

              // reverse: true,
              // allowImplicitScrolling: true,
              onPageChanged: (value) {
                _animationController.forward();
              },
              itemBuilder: (BuildContext context, int index2) {
                if (index2 == 0) {
                  // print('index home 0');
                  return StartingScreenImage(
                      'startingscreen2', 'From finding a perfect home');
                } else if (index2 == 1) {
                  // print('index home 1');
                  return StartingScreenImage(
                      'startingscreen3', 'and getting it furnished');
                } else if (index2 == 2) {
                  // print('index home 2');
                  return StartingScreenImage(
                      'startingscreen4', 'to maintaining it in & out');
                } else {
                  // print('index home 4');
                  return StartingScreenImage2('startingscreen5',
                      'Everything that helps you move away from home easily');
                }
              }),
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
                      // onDotClicked: (index) {
                      //   return pageController.animateToPage(index,
                      //       duration: Duration(milliseconds: 250),
                      //       curve: Curves.bounceInOut);
                      // },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      //   body: Stack(
      //     children: [
      //       PageView(
      //         controller: pageController,
      //         children: [
      //           StartingScreenImage(
      //               'startingscreen2', 'From finding a perfect home'),
      //           StartingScreenImage(
      //               'startingscreen3', 'and getting it furnished'),
      //           StartingScreenImage(
      //               'startingscreen4', 'to maintaining it in & out'),
      //           StartingScreenImage2('startingscreen5',
      //               'Everything that helps you move away from home easily'),
      //         ],
      //       ),
      //       Positioned(
      //         bottom: 20,
      //         right: MediaQuery.of(context).size.width / 3,
      //         left: MediaQuery.of(context).size.width / 3,
      //         child: Column(
      //           children: [
      //             Container(
      //               child: Center(
      //                 child: SmoothPageIndicator(
      //                   controller: pageController,
      //                   count: 4,
      //                   // textDirection: TextDirection.rtl,
      //                   // effect: ScrollingDotsEffect(),
      //                   effect: SlideEffect(
      //                       spacing: 8.0,
      //                       radius: 4.0,
      //                       dotWidth: 24.0,
      //                       dotHeight: 16.0,
      //                       paintStyle: PaintingStyle.stroke,
      //                       strokeWidth: 1.5,
      //                       dotColor: Colors.grey,
      //                       activeDotColor: Colors.indigo),
      //                   onDotClicked: (index) {
      //                     return pageController.animateToPage(index,
      //                         duration: Duration(milliseconds: 250),
      //                         curve: Curves.bounceInOut);
      //                   },
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    ));
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
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Text(
            '${widget.text}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: InkWell(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Skip'),
                ),
              ),
            ),
            onTap: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('showHome', true);

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomTabBar()));
            },
          ),
        ),
      ],
    );
  }
}

class StartingScreenImage2 extends StatefulWidget {
  final bool showHome = false;
  
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
                    MaterialPageRoute(builder: (context) => LoginPage(widget.showHome)));
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
