import 'package:flutter/material.dart';
import 'heading_page.dart';
import 'full_screenPhoto.dart';
import 'build_Sheet.dart';

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
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Rs 7500',
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xFF345C5F),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              ' / month',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF345C5F),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: RaisedButton(
                              color: Color(0xFF345C5F),
                              onPressed: () {},
                              child: Text(
                                "ENQUIRE",
                                style: TextStyle(
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image(
                            height: 20,
                            width: 20,
                            image: AssetImage('assets/location_image.png'),
                          ),
                          Text(
                            'Block B, Sector 17, Rohini',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              color: Color(0xFF345C5F),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 0, 15),
                        child: Text(
                          'view on Map',
                          style: TextStyle(
                            color: Color(0xFF345C5F),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          CardBox('24X7 Water Supply'),
                          CardBox('Built Up Area = 1500 sqft'),
                        ],
                      ),
                      Row(
                        children: [
                          CardBox('Fully Furnished'),
                          CardBox('Ready to Move'),
                          CardBox('2 BHK'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Heading('About the Property'),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 3),
                        child: Text('this is show modal bottom sheet'),
                      ),
                    ],
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
