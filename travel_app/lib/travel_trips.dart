import 'package:flutter/material.dart';
import 'package:travel_app/home_trip.dart';
import 'package:travel_app/profile_trips.dart';
import 'package:travel_app/search_trips.dart';

class TravelTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TravelTrips();
  }

}


class _TravelTrips extends State<TravelTrips>{

    int indexTap = 0;
    final List<Widget> widgetsChildren = [
      HomeTrips(),
      SearchTrips(),
      ProfileTrips()
    ];

    void onTapTapped(int index){
      setState(() {
       indexTap = index; 
      });
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetsChildren[indexTap],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("")),
              BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("")),
              BottomNavigationBarItem(icon: Icon(Icons.person),title: Text(""))
            ],
        ),
      ),
    );
  }

}