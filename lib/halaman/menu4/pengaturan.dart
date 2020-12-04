import 'package:flutter/material.dart';

class Pengaturan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          RaisedButton(
              child: Text("Logout"),
              onPressed: (){
                Navigator.pushReplacementNamed(context, "/login");
              }
          ),
        ],
      ),
    );
  }
}