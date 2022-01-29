import 'package:flutter/material.dart';
import 'package:monkhood/pages/MessagesFiles/all_screen_page.dart';
import 'package:monkhood/pages/MessagesFiles/calls_screen_page.dart';
import 'package:monkhood/pages/home_page.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> with SingleTickerProviderStateMixin {
  TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(
      child: Text(
        'ALL',
        // style: TextStyle(
        //   color: Colors.white,
        // ),
      ),
    ),
    Tab(
      child: Text(
        'UNREAD',
        // style: TextStyle(
        //   color: Colors.white,
        // ),
      ),
    ),
    Tab(
      child: Text(
        'CALLS',
        // style: TextStyle(
        //   color: Colors.white,
        // ),
      ),
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, initialIndex: 0, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Inbox',
          style: TextStyle(
            color: Color(0xFF345C5F),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.bookmark,
              color: Color(0xFF345C5F),
              size: 30,
            ),
          ),
        ],
        // bottom: ,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xFFDEECED),
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              child: TabBar(
                controller: _tabController,
                unselectedLabelColor: Color(0xFF345C5F),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: "Montserrat",
                ),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                ),
                // unselectedLabelStyle: TextStyle(),
                indicator: BoxDecoration(
                  
                    color: Color(0xFF345C5F),
                    borderRadius: BorderRadius.circular(30)),
                tabs: topTabs,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ChatPage(),
                  Text('Calls'),
                  CallScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
