import 'package:flutter/material.dart';
import 'package:well_app/services/auth.dart';

class Pengaturan extends StatelessWidget {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text("Logout"),
                onPressed: () async{
                  await _auth.signOut();
                  // Navigator.pushNamedAndRemoveUntil(context, "/signin", (route) => false);
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}