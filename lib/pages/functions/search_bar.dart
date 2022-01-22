import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF2F2F2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                  prefixIcon: FlatButton(
                    child: Icon(
                      Icons.search,
                    ),
                    onPressed: () {},
                  ),
                  // suffixIcon: Image(
                  //   height: 10.0,
                  //   width: 10.0,
                  //   image: AssetImage('assets/filter_icon.png'),
                  // ),
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
