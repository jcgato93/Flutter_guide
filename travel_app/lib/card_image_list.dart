import 'package:flutter/material.dart';
import 'package:travel_app/card_image.dart';

class CardImageList extends StatelessWidget{
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/paradise1.jpg"),
          CardImage("assets/img/paradise2.jpg"),
          CardImage("assets/img/paradise3.jpg"),
          CardImage("assets/img/paradise4.jpg")
        ],
      ),
    );
  }

}