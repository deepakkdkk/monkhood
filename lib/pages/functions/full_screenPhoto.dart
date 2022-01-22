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
                size: 50,
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

class LastSearchTap extends StatefulWidget {
  final String image;
  LastSearchTap(this.image);
  @override
  _LastSearchTapState createState() => _LastSearchTapState();
}

class _LastSearchTapState extends State<LastSearchTap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(widget.image),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
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
          Text('2BHK',
          ),
          SizedBox(
            height: 100,
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'this is very good place to stay',
                      style: TextStyle(
                        fontSize: 100,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
