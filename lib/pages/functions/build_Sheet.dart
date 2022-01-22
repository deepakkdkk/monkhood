import 'package:flutter/material.dart';
import 'package:monkhood/pages/functions/heading_page.dart';

Widget buildSheet() => DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.5,
      maxChildSize: 0.7,
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
            )
          ],
        ),
      ),
    );

class CardBox extends StatefulWidget {
  final String textTitle;
  CardBox(this.textTitle);

  @override
  _CardBoxState createState() => _CardBoxState();
}

class _CardBoxState extends State<CardBox> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selected = !_selected;
          });
        },
        child: Card(
          color: _selected ? Colors.limeAccent : Color(0xFFE3EBEC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          elevation: 5.0,
          child: ListTile(
            title: Text(widget.textTitle),
          ),
        ),
      ),
    );
  }
}
