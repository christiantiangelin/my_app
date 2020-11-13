import 'package:flutter/material.dart';

class Favorit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child:  Center(
        child: Column(
          children: <Widget>[
           Padding(padding:  EdgeInsets.all(20.0),),
           Padding(padding:  EdgeInsets.all(20.0),),
           Icon(Icons.star,size: 90.0, color: Colors.blueGrey,),
           Text("Belum Ada Dokter Favorit", style:  TextStyle(fontSize: 30.0, color: Colors.indigo),),
          ],
        ),
      ),
    );
  }
}