import 'package:flutter/material.dart';
import 'package:monkhood/pages/FavouriteFiles/enquireModel.dart';
import 'package:monkhood/pages/functions/search_bar.dart';
import 'package:monkhood/pages/functions/build_Sheet.dart';

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Favourites',
          style: TextStyle(
            fontFamily: "Montserrat",
            color: Color(0xFF345C5F),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile_image.png'),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: SearchBar(),
            ),
            Expanded(
              flex: 13,
              child: Container(
                child: ListView.builder(
                  itemCount: enquireData.length,
                  itemBuilder: (context, i) => Column(
                    children: [
                      singleFavourite(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget singleFavourite() {
  return Container(
    margin: EdgeInsets.zero,
    // color: Colors.red,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image(
                matchTextDirection: true,
                image: AssetImage('assets/building3.jpg'),
              ),
              // child: Container(
              //   // height: 200,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //     image: AssetImage('assets/building3.jpg'),
              //     fit: BoxFit.fill,
              //   ),),
              // child: Container(
              //   child: Padding(
              //     padding: const EdgeInsets.all(10.0),
              //     child: Container(
              //       decoration: BoxDecoration(
              //         backgroundBlendMode: BlendMode.softLight,
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(20),
              //       ),
              //       child: Padding(
              //         padding: const EdgeInsets.all(10.0),
              //         child: Image(
              //           height: 10.0,
              //           width: 10.0,
              //           image: AssetImage('assets/feedback_selected.png'),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              //   ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '7500',
                          style: TextStyle(
                            color: Color(0xFF345C5F),
                            fontSize: 20,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '/ month',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Montserrat",
                            color: Color(0xFF345C5F),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
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
                    Row(
                      children: [
                        CardBox2('Fully Furnished'),
                        CardBox2('Ready to Move'),
                        CardBox2('2 BHK'),
                      ],
                    ),
                    Row(
                      children: [
                        CardBox2('24X7 Water Supply'),
                        CardBox2('Built Up Area = 1500 sqft'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'B-6',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            color: Color(0xFF345C5F),
                          ),
                        ),
                        Text(
                          'Rohini Sector 19',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Montserrat",
                            color: Color(0xFF345C5F),
                          ),
                        ),
                        Text(
                          'Delhi',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Montserrat",
                            color: Color(0xFF345C5F),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2.0,
          color: Color(0xFF345C5F),
          height: 2,
        ),
      ],
    ),
  );
}

class CardBox2 extends StatefulWidget {
  String textTitle;
  CardBox2(this.textTitle);
  @override
  _CardBox2State createState() => _CardBox2State();
}

class _CardBox2State extends State<CardBox2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            // _selected = !_selected;
          });
        },
        child: Card(
          color: Color(0xFFE3EBEC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.textTitle),
          ),
        ),
      ),
    );
  }
}
