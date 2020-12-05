import 'package:flutter/material.dart';

class DaftarPage extends StatefulWidget {
  @override
  _DaftarPageState createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  TextEditingController usernameC =   TextEditingController();
  TextEditingController passwordC =   TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar"),),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
