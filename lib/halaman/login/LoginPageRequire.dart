import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class LoginPageR extends StatefulWidget {
  LoginPageR({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageRState createState() => new _LoginPageRState();
}

class _LoginPageRState extends State<LoginPageR> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(30.0),
                padding: EdgeInsets.only(top:150.0,left: 30.0,right: 30.0),
                child: Image.asset("images/logo_appbar_klikdoter.png"),
              ),
              Spacer(),
              Column(
                children: <Widget>[
                  MaterialButton(
                    child: Text("Daftar KlikDokter",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    color: Colors.lightBlue[800],
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {Navigator.pushNamed(context, "login");},
                  ),
                  Spacer(),
                  OutlineButton(
                    child: Text("Masuk KlikDokter",style: TextStyle(color: Colors.lightBlue[800],fontWeight: FontWeight.bold)),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {Navigator.pushNamed(context, "daftar");},
                  ),
                ],
              ),
              // Icon(FontAwesomeIcons.facebook,size: 50,),

              SizedBox(height: 15.0,),
              Text("atau"),
              SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InputChip(
                    backgroundColor: Colors.white,
                    label: Text("Facebook",style: TextStyle(color: Colors.lightBlue[800],fontWeight: FontWeight.bold)),
                    avatar: CircleAvatar(
                      child: Image.asset("images/logo_appbar_klikdoter.png"),
                    ),
                    onPressed: (){},
                  ),
                  InputChip(
                    backgroundColor: Colors.lightBlue[800],
                    avatar: CircleAvatar(),
                    label: Text("Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                child: RichText(text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: "Kesulitan mengakses akun KlikDokter?",style: TextStyle(fontWeight: FontWeight.bold )),
                      TextSpan(text: "Laporkan Masalah Teknis"),
                    ]
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
