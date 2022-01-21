import 'package:flutter/material.dart';
import 'last_searchPage.dart';
import 'build_Sheet.dart';

class FullScreenPhoto extends StatefulWidget {
  final String image;
  FullScreenPhoto(this.image);
  @override
  _FullScreenPhotoState createState() => _FullScreenPhotoState();
}

class _FullScreenPhotoState extends State<FullScreenPhoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(widget.image),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: [
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: Icon(
                Icons.arrow_left,
                size: 40.0,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Text('2 BhK'),
            SizedBox(
              height: 10,
            ),
            Text('rohini'),
            GestureDetector(
              child: Icon(
                Icons.rounded_corner,
                size: 20,
              ),
              onTap: () {
                showModalBottomSheet(
                  isDismissible: true,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => buildSheet(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
