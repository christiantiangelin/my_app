import 'package:flutter/material.dart';
import 'package:well_app/services/auth.dart';
import 'package:well_app/shared/constants.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  String email = "";
  String password = "";
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: Form(
          key:_formkey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {setState(() => email = value);},
                controller: controllerUsername,
                validator: (val){ val.isEmpty? "Masukkan username anda" : null;},
                decoration: textInputDecoration.copyWith(hintText: "Username"),
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                onChanged: (value) {setState(() => password = value);},
                obscureText: true,
                controller: controllerUsername,
                validator: (val){ val.length<8? "Password minimal 8 digit " : null;},
                decoration: textInputDecoration.copyWith(hintText: "Password")
              ),
              SizedBox(height: 50,),
              FlatButton(
                onPressed: () async{
                  // Navigator.pushReplacementNamed(context, "/home");
                  if(_formkey.currentState.validate()){
                    dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                    if(result == null){
                      setState(() {
                        error = "username dan email anda belum terdaftar";
                      });
                    }
                  }
                  else{

                  }
                },
                child: Text("Sign In"),
                color: Colors.indigoAccent,)
            ],
          ),
        ),
      ),
    );
  }
}

