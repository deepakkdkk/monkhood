import 'package:flutter/material.dart';
import 'package:monkhood/bottomBar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var email = "";
  var password = "";
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool valueFirst = false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  clearText() {
    emailController.clear();
    passwordController.clear();
  }

  Future<int> createAlbum(String email, String password) async {
    final response = await http.post(
      Uri.parse('https://monkhood-api.herokuapp.com/api/test'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "email": email,
        "password": password,
      }),
    );
    print(response.statusCode);
    print("post code");
    print(response.body);
    return response.statusCode;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(0),
              // color: Color(''),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.35,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'Login',
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
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
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
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Text(
                          "Login Using",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserarrat',
                            fontSize: 20,
                            decoration: TextDecoration.none,
                          ),
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
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            animationDuration: Duration(milliseconds: 3000),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0XFF345C5F)),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0XFFDEECED),
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: Color(0XFF345C5F),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Proceed',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0XFF345C5F),
                                  fontFamily: 'Montserrat',
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () async {
                            email = emailController.text;
                            password = passwordController.text;
                            int res = await createAlbum(email, password);
                            if (res == 200) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomTabBar()),
                              );
                            }

                            setState(() {
                              clearText();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
