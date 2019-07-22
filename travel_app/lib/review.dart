import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  
  String pathImage = "assets/img/profile_photo.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place";


  Review(this.pathImage,this.name,this.details,this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    final userComment = Container(
      margin: EdgeInsets.only(
        left: 16.0,        
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 16.0,        
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userName= Container(
      margin: EdgeInsets.only(
        left: 16.0,        
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );


// ===========================

    final userDetails = Flexible(      
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.start, // alinear a la izquierda
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
      ),
    );
    

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }

}

/**
 * el CircleAvatar es una clase de Flutter que nos permite con una sola linea de codigo crear una imagen circular :
 * 
    String imgUrl = "la url de una imagen en internet"
    CircleAvatar(        
        backgroundImage: NetworkImage(imgUrl),
      ),
 * Ahora esta clase no acepta recibir parametros como height y width, directamente como si de un texto se tratase, asi que la mejor forma de cambiar las dimensiones del avatar 
 * es con un Container que lo envuelva y a este container cambiarle sus dimensiones.  
 * 
      final avatar = Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.only(
        top: 10,
        left: 10
      ),
      child: CircleAvatar(
        //
        //backgroundImage: NetworkImage(imgUrl),
      ),
    );
    return avatar;
 */