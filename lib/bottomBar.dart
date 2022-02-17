import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:monkhood/pages/Favourite_page.dart';
import 'package:monkhood/pages/Profile_page.dart';
import 'package:monkhood/pages/home_page.dart';
import 'package:monkhood/pages/message_page.dart';
class BottomTabBar extends StatefulWidget {
  

  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CupertinoTabScaffold(
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
                  return CupertinoTabView(
                    builder: (context) {
                      return CupertinoPageScaffold(
                        child: HomePage(),
                      );
                    },
                  );
              }
            },
          ),
      ),
    );
  }
}