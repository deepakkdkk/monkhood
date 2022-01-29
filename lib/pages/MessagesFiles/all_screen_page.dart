import 'package:flutter/material.dart';
import 'package:monkhood/pages/MessagesFiles/chatModels.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, i) => Column(
          children: [
            singleMessage(
                chatData[i].address, chatData[i].name, chatData[i].message),
          ],
        ),
      ),
    );
  }
}

Widget singleMessage(String text1, String text2, String text3) {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.yellow,
                backgroundImage: AssetImage("assets/profile_image.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      color: Color(0xFF345C5F),
                    ),
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: Text(
                  text3,
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text('2:19'),
              ),
            ],
          ),
          Divider(
            thickness: 1.0,
          ),
        ],
      ),
    ),
  );
}
