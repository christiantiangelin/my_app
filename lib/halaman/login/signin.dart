import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  TextEditingController usernameC =   TextEditingController();
  TextEditingController passwordC =   TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: usernameC,
          ),
          TextField(
            controller: passwordC,
          )
        ],
      ),
    );
  }
}
