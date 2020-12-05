import 'package:flutter/material.dart';

class Pengaturan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RaisedButton(
                child: Text("Logout"),
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, "/signin", (route) => false);
                }
            ),
          ),
        ],
      ),
    );
  }
}