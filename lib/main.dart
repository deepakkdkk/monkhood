import 'package:flutter/material.dart';
import 'package:monkhood/pages/Profile_page.dart';
import 'pages/home_page.dart';
import 'pages/message_page.dart';
import 'package:flutter/cupertino.dart';
import 'pages/Feedback_page.dart';

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
      home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                activeIcon: BottomItemActive('assets/home_selected.png'),
                icon: BottomItemInactive('assets/home_unselected.png'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: BottomItemActive('assets/chat_selected.png'),
                icon: BottomItemInactive('assets/chat_unselected.png'),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                  activeIcon: BottomItemActive('assets/feedback_selected.png'),
                  icon: BottomItemInactive('assets/feedback_unselected.png'),
                  label: 'Feedback'),
              BottomNavigationBarItem(
                activeIcon: BottomItemActive('assets/profile_selected.png'),
                icon: BottomItemInactive('assets/profile_unselected.png'),
                label: 'Profile',
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
                    child: FeedbackPage(),
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

class BottomItemActive extends StatelessWidget {
  final String selectedItem;
  BottomItemActive(this.selectedItem);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Image(
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
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Image(
        image: AssetImage(unselectedItem),
      ),
    );
  }
}
