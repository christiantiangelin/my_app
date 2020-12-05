import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  TextEditingController usernameC =   TextEditingController();
  TextEditingController passwordC =   TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // TextField(
            //   controller: usernameC,
            // ),
            // TextField(
            //   controller: passwordC,
            // ),
            SizedBox(height: 50,),
            FlatButton(onPressed: (){Navigator.pushReplacementNamed(context, "/home");}, child: Text("Sign In"),color: Colors.indigoAccent,)
          ],
        ),
      ),
    );
  }
}
