import 'package:flutter/material.dart';
import 'package:well_app/services/auth.dart';

class DaftarPage extends StatefulWidget {
  @override
  _DaftarPageState createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  TextEditingController emailC =   TextEditingController();
  TextEditingController passwordC =   TextEditingController();

  String email="";
  String password="";
  String error="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registrasi"),),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: Form(
          // key:,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() => email = value);
                },
                controller: emailC,
                validator: (val){ val.isEmpty? "Email harus diisi" : null;},
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                onChanged: (value) {
                  setState(() => password = value);
                },
                obscureText: true,
                controller: passwordC,
                validator: (val){ val.length<8 ? "Password harus 8 digit" : null;},
              ),
              SizedBox(height: 50,),
              FlatButton(
                child: Text("Daftar"),
                onPressed: () async{
                  // Navigator.pushReplacementNamed(context, "/home");
                  if(_formkey.currentState.validate()){
                    dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                    if(result == null){
                      setState(() {
                        error = "Data belum lengkap";
                      });
                    }
                  }
                },
              ),
              SizedBox(height: 20.0,),
              Text(error,style: TextStyle(color: Colors.red),)
            ],
          ),
        ),
      ),
    );
  }
}
