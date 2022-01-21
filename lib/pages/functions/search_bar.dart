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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 25, 10),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF2F2F2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  prefixIcon: FlatButton(
                    child: Icon(
                      Icons.search,
                    ),
                    onPressed: () {},
                  ),
                  suffixIcon: Icon(
                    Icons.filter_3_rounded,
                  ),
                  hintText: 'Enter the place name',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
