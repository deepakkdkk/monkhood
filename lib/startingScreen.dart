import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'bottomBar.dart';

class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  PageController pageController2 = new PageController();
  bool marked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: pageController2,
          children: [
            LogoAnimationPage(),
            HomeSkipPages(),
          ],
        ),
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

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool valueFirst = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Color(''),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Image(
                      image: AssetImage('assets/Rectangle 105.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2 - 5,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            height: 100,
                            width: 100,
                            image: AssetImage('assets/monkhood_logo.png'),
                          ),
                          // Text('Monkhood Living'),
                          Image(
                            image: AssetImage('assets/MonkHood Living.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'Login',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: MediaQuery.of(context).size.width / 3,
              endIndent: MediaQuery.of(context).size.width / 3,
              height: 2.0,
              thickness: 3,
              color: Color(0XFF345C5F),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Color(0XFF345C5F),
                    width: 4,
                  ),
                ),
                child: TextField(
                  controller: emailController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'email',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Color(0XFF345C5F),
                    width: 4,
                  ),
                ),
                child: TextField(
                  controller: passwordController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Checkbox(
                    value: this.valueFirst,
                    onChanged: (bool marked) {
                      setState(() {
                        this.valueFirst = marked;
                      });
                    },
                    checkColor: Colors.green,
                  ),
                  // SizedBox(width: 5,),
                  Flexible(
                    child: Text(
                      'I agree to the Privacy Policy and T&C laid.',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Login Using",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            Stack(
              children: [
                Center(
                  child: Image(
                    image: AssetImage('assets/Ellipse 50.png'),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  top: 5,
                  left: 5,
                  right: 5,
                  child: Center(
                    child: Image(
                      height: 30,
                      width: 30,
                      image: AssetImage('assets/googleimage.png'),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFDEECED),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Proceed',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color(0XFF345C5F),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomTabBar()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                // LogoAnimationPage(),
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

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool valueFirst = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Color(''),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Image(
                      image: AssetImage('assets/Rectangle 105.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2 - 5,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            height: 100,
                            width: 100,
                            image: AssetImage('assets/monkhood_logo.png'),
                          ),
                          // Text('Monkhood Living'),
                          Image(
                            image: AssetImage('assets/MonkHood Living.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'SignUp',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'Montserrat',
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: MediaQuery.of(context).size.width / 3,
              endIndent: MediaQuery.of(context).size.width / 3,
              height: 2.0,
              thickness: 3,
              color: Color(0XFF345C5F),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Color(0XFF345C5F),
                    width: 4,
                  ),
                ),
                child: TextField(
                  controller: nameController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Color(0XFF345C5F),
                    width: 4,
                  ),
                ),
                child: TextField(
                  controller: emailController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'email',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Color(0XFF345C5F),
                    width: 4,
                  ),
                ),
                child: TextField(
                  controller: passwordController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Checkbox(
                    value: this.valueFirst,
                    onChanged: (bool marked) {
                      setState(() {
                        this.valueFirst = marked;
                      });
                    },
                    checkColor: Colors.green,
                  ),
                  // SizedBox(width: 5,),
                  Flexible(
                    child: Text(
                      'I agree to the Privacy Policy and T&C laid.',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserarrat',
                        fontSize: 10,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "SignUp Using",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserarrat',
                fontSize: 20,
                decoration: TextDecoration.none,
              ),
            ),
            Stack(
              children: [
                Center(
                  child: Image(
                    image: AssetImage('assets/Ellipse 50.png'),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  top: 5,
                  left: 5,
                  right: 5,
                  child: Center(
                    child: Image(
                      height: 30,
                      width: 30,
                      image: AssetImage('assets/googleimage.png'),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFDEECED),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Proceed',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color(0XFF345C5F),
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomTabBar()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
