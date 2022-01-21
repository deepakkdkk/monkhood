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
    // return MaterialApp(
    //   home: Scaffold(
    //     bottomNavigationBar: BottomNavigationBar(
    //       type: BottomNavigationBarType.fixed,
    //       backgroundColor: Colors.white,
    //       selectedItemColor: Color(0xFF345C5F),
    //       unselectedItemColor: Colors.grey,

    //       items: [
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             Icons.home,
    //             // color: Color(0xFF345C5F),
    //           ),
    //           label: 'Home',
    //         ),
    //         // color: Color(0xFF345C5F),

    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             Icons.messenger_outline_sharp,
    //             color: Color(0xFF345C5F),
    //           ),
    //           label: 'Chat',
    //         ),
    //         BottomNavigationBarItem(
    //             // activeIcon: Image(
    //             //   image: AssetImage("assets/home.png"),
    //             // ),
    //             icon: Icon(
    //               Icons.favorite_border_outlined,
    //               color: Color(0xFF345C5F),
    //             ),
    //             label: 'Feedback'),
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             Icons.person,
    //             color: Color(0xFF345C5F),
    //           ),
    //           label: 'Profile',
    //         ),
    //       ],
    //     ),
    //     body: Navigator(
    //       onGenerateRoute: (settings) {
    //         Widget page = HomePage();
    //         if (settings.name == 'Chat') page = Message();
    //         return MaterialPageRoute(builder: (_) => page);
    //       },
    //     ),
    //   ),
    // );
    return MaterialApp(
      home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  // color: Color(0xFF345C5F),
                ),
                label: 'Home',
              ),
              // color: Color(0xFF345C5F),

              BottomNavigationBarItem(
                icon: Icon(
                  Icons.messenger_outline_sharp,
                  color: Color(0xFF345C5F),
                ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                  // activeIcon: Image(
                  //   image: AssetImage("assets/home.png"),
                  // ),
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: Color(0xFF345C5F),
                  ),
                  label: 'Feedback'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color(0xFF345C5F),
                ),
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

// switch (index) {
//             case 0:
//               return CupertinoTabView(
//                 builder: (context) {
//                   return CupertinoPageScaffold(
//                     child: HomePage(),
//                   );
//             case 1: return CupertinoTabView(builder: (context){return CupertinoPageScaffold(child: Message(),);},);
             
//                 },
//               );
//           }