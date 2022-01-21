import 'package:flutter/material.dart';
import 'full_screenPhoto.dart';
class LastSearch extends StatefulWidget {
  final String rate;
  final String photo;
  LastSearch(this.rate, this.photo);
  @override
  _LastSearchState createState() => _LastSearchState();
}

class _LastSearchState extends State<LastSearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 150,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(widget.photo),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.rate),
                GestureDetector(
                  child: Icon(
                    Icons.fullscreen,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullScreenPhoto(widget.photo)),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
