import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class ChatScreen extends StatefulWidget {
 final String text1, text2;
  ChatScreen(this.text1, this.text2);
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
      body: Container(
        child: StickyHeader(
          header: ListTile(
            tileColor: Color(0xFFDEECED),
            leading: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.yellow,
            ),
            title: Text(widget.text1),
            subtitle: Text(widget.text2),
            trailing: Icon(Icons.call),
          ),
          content: Column(children: [
                Container(
                  child: Text('this is first container',
                  style: TextStyle(
                    fontSize: 200,
                  ),),
                )
          ],),
        ),
      ),
    );
  }
}