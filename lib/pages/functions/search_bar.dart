import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 17, 10, 17),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical(y: 1),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF2F2F2),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  prefixIcon: Align(
                    widthFactor: 0.1,
                    child: FlatButton(
                      child: Image(
                        height: 20,
                        width: 20,
                        image: AssetImage("assets/search_image.png"),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  hintText: 'Enter the place name',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 13, 10, 13),
              decoration: BoxDecoration(
                color: Color(0xFF345C5F),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image(
                  height: 40.0,
                  width: 40.0,
                  image: AssetImage('assets/filter_icon.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
