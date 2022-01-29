import 'package:flutter/material.dart';
import 'callModels.dart';
class CallScreen extends StatefulWidget {
  

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: callData.length,
        itemBuilder: (context, i) => Column(
          children: [
            singleMessage(
                callData[i].address, callData[i].name,),
          ],
        ),
      ),
    );
  }
}

Widget singleMessage(String text1, String text2) {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(5, 1, 5, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 7,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage("assets/profile_image.png"),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 10,
                ),
              ),
              Expanded(
                flex: 35,
                child: Column(
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
              ),
              Expanded(
                flex: 5,
                child: Container(
                  child: Image(
                    height: 25,
                    width: 25,
                    image: AssetImage("assets/missed_call.png"),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
              // Expanded(
              //   flex: 1,
              //   child: Text('2:19'),
              // ),
              Text('2:19'),
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
