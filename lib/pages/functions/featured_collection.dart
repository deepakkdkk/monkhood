import 'package:flutter/material.dart';

class FeaturedCollection extends StatefulWidget {
  @override
  _FeaturedCollectionState createState() => _FeaturedCollectionState();
}

class _FeaturedCollectionState extends State<FeaturedCollection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        height: 100,
      ),
    );
  }
}
