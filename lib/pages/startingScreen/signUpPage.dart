import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:monkhood/bottomBar.dart';
import 'package:monkhood/pages/startingScreen/apicheckingsignup.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import '../../bottomBar.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var name = "";
  var email = "";
  var password = "";
  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool valueFirst = false;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  clearText() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }

  Future<int> createAlbum(String name, String email, String password) async {
    final response = await http.post(
      Uri.parse('https://monkhood-api.herokuapp.com/api/signup'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "name": name,
        "email": email,
        "password": password,
        // "loginType": loginType,
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
                        height: 5,
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
                  flex: 6,
                  child: Column(
                    children: [
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
                          child: TextFormField(
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
                        height: MediaQuery.of(context).size.height * 0.005,
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
                        height: MediaQuery.of(context).size.height * 0.005,
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
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Text(
                          "SignUp Using",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserarrat',
                            fontSize: MediaQuery.of(context).size.height * 0.02,
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
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: InkWell(
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
                                    fontSize: 25,
                                    color: Color(0XFF345C5F),
                                    fontFamily: 'Montserrat',
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                            onTap: () async {
                              name = nameController.text;
                              email = emailController.text;
                              password = passwordController.text;
                              int res =
                                  await createAlbum(name, email, password);
                              if (res == 200) {
                                final prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setBool('showHome', true);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      // builder: (context) =>
                                      //     ApiSignup(name, email, password)),
                                      builder: (context) => BottomTabBar(),
                                    ));
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Expanded(
                //   flex: 1,
                //   child: Column(
                //     children: [
                //       Container(
                //         margin: EdgeInsets.symmetric(vertical: 10),
                //         child: Padding(

                //           padding: const EdgeInsets.symmetric(horizontal: 35),
                //           child: InkWell(
                //             child: Container(
                //               decoration: BoxDecoration(
                //                 color: Color(0XFFDEECED),
                //                 borderRadius: BorderRadius.circular(40),
                //                 border: Border.all(
                //                   color: Color(0XFF345C5F),
                //                 ),
                //               ),
                //               child: Center(
                //                 child: Text(
                //                   'Proceed',
                //                   style: TextStyle(
                //                     fontSize: 40,
                //                     color: Color(0XFF345C5F),
                //                     fontFamily: 'Montserrat',
                //                     decoration: TextDecoration.none,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //             onTap: () async {
                //               name = nameController.text;
                //               email = emailController.text;
                //               password = passwordController.text;
                //               int res = await createAlbum(name, email, password);
                //               if (res == 200) {
                //                 final prefs =
                //                     await SharedPreferences.getInstance();
                //                 prefs.setBool('showHome', true);

                //                 Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       // builder: (context) =>
                //                       //     ApiSignup(name, email, password)),
                //                   builder: (context) => BottomTabBar(),)
                //                 );
                //               }
                //             },
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
