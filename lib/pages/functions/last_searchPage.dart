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
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LastSearchTap(widget.photo),
            ),
          );
        },
        child: Container(
          height: 200,
          width: 175,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          
                          color: Color(0xFF345C5F),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.rate + "/- pm",
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                        ),
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image(
                                
                                height: 10.0,
                                width: 10.0,
                                image: AssetImage('assets/full_imageIcon.png'),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FullScreenPhoto(widget.photo)),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Block B',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Text('Sector 17,Rohini',
                    style: TextStyle(
                      color: Colors.white,
                      
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                    ),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
