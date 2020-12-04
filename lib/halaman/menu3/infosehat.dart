import 'package:flutter/material.dart';

class Infosehat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("Infosehat", style: new TextStyle(fontSize: 30.0, color: Colors.lightGreen),)
          ],
        ),
      ),
    );
  }
}