import 'package:flutter/material.dart';
import 'package:monkhood/pages/Profile_page.dart';
import 'pages/home_page.dart';
import 'pages/message_page.dart';
import 'package:flutter/cupertino.dart';
import 'pages/Favourite_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF345C5F),
        fontFamily: "Montserrat",
      ),
      home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                // activeIcon: BottomItemActive('assets/home_selected.png'),
                activeIcon: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(35, 9, 0, 9),
                    child: Image(
                      image: AssetImage('assets/home_selected.png'),
                    ),
                  ),
                ),
                // icon: BottomItemInactive('assets/home_unselected.png'),
                icon: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 9, 0, 9),
                    child: Image(
                      image: AssetImage('assets/home_unselected.png'),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                // activeIcon: BottomItemActive('assets/chat_selected.png'),
                activeIcon: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 9, 0, 9),
                    child: Image(
                      image: AssetImage('assets/chat_selected.png'),
                    ),
                  ),
                ),
                // icon: BottomItemInactive('assets/chat_unselected.png'),
                icon: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 9, 0, 9),
                    child: Image(
                      image: AssetImage('assets/chat_unselected.png'),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                // activeIcon: BottomItemActive('assets/feedback_selected.png'),
                activeIcon: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 9, 15, 9),
                    child: Image(
                      image: AssetImage('assets/feedback_selected.png'),
                    ),
                  ),
                ),
                // icon: BottomItemInactive('assets/favourite_unselected.png'),
                icon: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 9, 15, 9),
                    child: Image(
                      image: AssetImage('assets/favourite_unselected.png'),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                // activeIcon: BottomItemActive('assets/profile_selected.png'),
                activeIcon: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 9, 0, 9),
                    child: Image(
                      image: AssetImage('assets/profile_selected.png'),
                    ),
                  ),
                ),
                // icon: BottomItemInactive('assets/profile_unselected.png'),
                icon: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 9, 35, 9),
                    child: Image(
                      image: AssetImage('assets/profile_unselected.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                    child: HomePage(),
                  );
                });
              case 1:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                    child: Message(),
                  );
                });

              case 2:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                    resizeToAvoidBottomInset: false,
                    child: FavouritePage(),
                  );
                });
              case 3:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                    child: Profile(),
                  );
                });
              default:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                    child: HomePage(),
                  );
                });
            }
          }),
    );
  }
}

Widget bottombar(String selectedItem) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 9, 0, 9),
      child: Image(
        width: 100,
        image: AssetImage(selectedItem),
      ),
    ),
  );
}

class BottomItemActive extends StatelessWidget {
  final String selectedItem;
  BottomItemActive(this.selectedItem);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 9, 0, 9),
      child: Image(
        width: 100,
        image: AssetImage(selectedItem),
      ),
    );
  }
}

class BottomItemInactive extends StatelessWidget {
  final String unselectedItem;
  BottomItemInactive(this.unselectedItem);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 9, 0, 9),
        child: Image(
          width: 100,
          image: AssetImage(unselectedItem),
        ),
      ),
    );
  }
}
