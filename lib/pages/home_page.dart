import 'dart:developer';
import 'functions/search_bar.dart';
import 'package:flutter/material.dart';
import 'functions/services.dart';
import 'functions/heading_page.dart';
import 'functions/last_searchPage.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'functions/featured_collection.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: ListTile(
                    leading: CircleAvatar(child: Icon(Icons.location_city)),
                    trailing: CircleAvatar(
                      child: Image(
                        image: AssetImage("assets/profile_image.png"),
                      ),
                    ),
                    isThreeLine: false,
                    title: Text("Sec-19,RohiniDL"),
                  ),
                ),
                Container(
                  color: Color(0xFFDEECED),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Services(
                        servicename: 'Flats',
                      ),
                      Services(
                        servicename: 'furniture',
                      ),
                      Services(
                        servicename: 'appliances',
                      ),
                      Services(
                        servicename: 'Services',
                      ),
                    ],
                  ),
                ),
                StickyHeader(
                  header: SearchBar(),
                  content: Column(
                    children: [
                      Container(
                        height: 100,
                        color: Color(0xFFC4C4C4),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Heading('Continue your last search'),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            LastSearch('7000', "assets/building3.jpg"),
                            LastSearch('8000', "assets/building4.jpg"),
                            LastSearch('9000', "assets/building3.jpg"),
                            LastSearch('10000', "assets/building4.jpg"),
                            LastSearch('11000', "assets/building3.jpg"),
                          ],
                        ),
                      ),
                      Heading('Featured Collection'),
                      FeaturedCollection(),
                      FeaturedCollection(),
                      FeaturedCollection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
