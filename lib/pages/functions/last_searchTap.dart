import 'package:flutter/material.dart';
import 'heading_page.dart';
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
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: DraggableScrollableSheet(
                initialChildSize: 0.8,
                minChildSize: 0.5,
                maxChildSize: 0.9,
                builder: (_, controller) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    controller: controller,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Rs 7500',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 30,
                                    color: Color(0xFF345C5F),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  ' / month',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    decoration: TextDecoration.none,
                                    fontSize: 15,
                                    color: Color(0xFF345C5F),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: ElevatedButton(
                                  // color: Color(0xFF345C5F),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Color(0xFF345C5F)),    
                                  ),
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
                                  decoration: TextDecoration.none,
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
                                fontSize: 10,
                                color: Color(0xFF345C5F),
                                decoration: TextDecoration.none,
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
                            child: Text(
                              'this is show modal bottom sheet',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      )
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
