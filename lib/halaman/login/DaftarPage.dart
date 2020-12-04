import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:well_app/halaman/components/button_gradient_background.dart';

class DaftarPage extends StatefulWidget {
  DaftarPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DaftarPageState createState() => new _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  TextEditingController usernameEditingController = new TextEditingController();
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  TextEditingController passwordConfirmEditingController =
      new TextEditingController();

  final registerformKey = GlobalKey<FormState>();
  final auth = FirebaseAuth.instance;

  void add() {
    Navigator.pushReplacementNamed(context, "beranda");

    Firestore.instance.collection("User").document(emailEditingController.text).setData({
      "username" : usernameEditingController.text,
      "email" : emailEditingController.text,
      "password" : passwordEditingController.text,
    });

    usernameEditingController.text = "";
    emailEditingController.text = "";
    passwordEditingController.text = "";
    passwordConfirmEditingController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Image.asset("images/klikdoter.png"),
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              style: TextStyle(color: Colors.indigoAccent, fontSize: 16),
              decoration: InputDecoration(
                  hintText: "username",
                  hintStyle: TextStyle(color: Colors.indigoAccent.withOpacity(0.23)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigoAccent)),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigoAccent))
              ),
              controller: usernameEditingController,
            ),
            TextFormField(
              style: TextStyle(color: Colors.indigoAccent, fontSize: 16),
              decoration: InputDecoration(
                  hintText: "email",
                  hintStyle: TextStyle(color: Colors.indigoAccent.withOpacity(0.23)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigoAccent)),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigoAccent))
              ),
              controller: emailEditingController,
            ),
            TextFormField(
              obscureText: true,
              style: TextStyle(color: Colors.indigoAccent, fontSize: 16),
              decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.indigoAccent.withOpacity(0.23)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigoAccent)),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigoAccent))
              ),
              controller: passwordEditingController,
            ),
            TextFormField(
              obscureText: true,
              style: TextStyle(color: Colors.indigoAccent, fontSize: 16),
              decoration: InputDecoration(
                  hintText: "password confirm",
                  hintStyle: TextStyle(color: Colors.indigoAccent.withOpacity(0.23)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigoAccent)),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.indigoAccent))
              ),
              controller: passwordConfirmEditingController,
            ),
            Spacer(),
            ButtonGradientBackground(size: size,namabtn:"daftar",press: add,)
          ],
        ),
      ),
    );
  }
}
