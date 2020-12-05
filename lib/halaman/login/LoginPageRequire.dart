import 'package:flutter/material.dart';
import 'package:well_app/services/auth.dart';

class LoginRequire extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            child: Text("Lewati"),
            onTap: () async {
              dynamic result = await _auth.signInAnon();
              if(result = null){ print(" error sign in");}
              else{
                print("signed in");
                print(result.uid);
              }
            },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(30.0),
            padding: EdgeInsets.only(top: 150.0, left: 30.0, right: 30.0),
            child: Image.asset("images/logo_klikdoter.png"),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, "/home");
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                child: Text(
                  "Daftar KlikDokter",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.indigoAccent[400],
                  borderRadius: BorderRadius.circular(30),
                )),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, "/home");
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                child: Text(
                  "Masuk KlikDokter",
                  style: TextStyle(
                      color: Colors.indigoAccent, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Colors.indigoAccent),
                    boxShadow: [BoxShadow(blurRadius: 1, color: Colors.grey)])),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(child: Text("atau")),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InputChip(
                labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                backgroundColor: Colors.indigo[700],
                label: Text("Facebook",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                avatar: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset("images/fb.jpg"),
                ),
                onPressed: () {},
              ),
              InputChip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset("images/google.png"),
                ),
                backgroundColor: Colors.indigoAccent[400],
                label: Text(
                  "Google",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
