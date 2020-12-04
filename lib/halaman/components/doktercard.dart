import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DokterCard extends StatelessWidget {
  const DokterCard({
    Key key,
    @required this.size,
    this.namadokter,
    this.spesialis,
    this.image,
  }) : super(key: key);

  final String namadokter;
  final String spesialis;
  final String image;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 190,
        width: 150,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(image),
            ),
            Container(
                child:  Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(namadokter,style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),),
                    Text(spesialis,style: TextStyle(color: Colors.indigo.withOpacity(0.23)),),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
