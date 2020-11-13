import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DaftarPage extends StatefulWidget {
  DaftarPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DaftarPageState createState() => new _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Nama Anda',style: TextStyle(color: Colors.indigoAccent),),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                controller: myController,
              ),
            ],
          ),
        )
      ),
    );
  }
}