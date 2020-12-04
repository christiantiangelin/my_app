import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String info ="";
  void dologin() {
    signInWithGoogle().then((value) => (){ Navigator.pushReplacementNamed(context, "beranda");});
  }

  Future<FirebaseUser> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    // Create a new credential
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    FirebaseUser user = (await FirebaseAuth.instance.signInWithCredential(credential)).user;
    return user;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Image.asset("images/klikdoter.png"),
          ),
          SizedBox(height: 50,),
          GestureDetector(
            onTap: dologin,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.indigoAccent),
              width: size.width,
              child: Text(
                "Masuk dengan Google",
                style:
                TextStyle(fontSize: 17, color: Colors.indigo),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, "daftar");
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.indigoAccent),
              width: size.width,
              child: Text(
                "Daftar",
                style:
                TextStyle(fontSize: 17, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
