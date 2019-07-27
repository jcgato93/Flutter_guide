import 'package:flutter/material.dart';
import 'package:travel_app/review_list.dart';

import 'desciption_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  
  String descriptionDummy = "Lorem Ipsum is simply dummy text, Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy textLorem Ipsum is simply dummy text ";
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace("Duwili Ella",4, descriptionDummy),
                ReviewList()
              ],
            ),
           HeaderAppBar()
          ],
        );
  }

}