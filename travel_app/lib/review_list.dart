import 'package:flutter/material.dart';
import 'package:travel_app/review.dart';

class ReviewList extends StatelessWidget{

  String pathImage = "assets/img/profile_photo.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place"; 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var wgs = [];

    for (var i = 0; i < 5; i++) {
      wgs.add(
        new Review(pathImage, name, details, comment)
      );
    }

    return Column(
      crossAxisAlignment : CrossAxisAlignment.start,
      children: <Widget>[
        ...wgs
      ],
    );

    
  }

}