import 'package:flutter/material.dart';

class ButtonGradientBackground extends StatelessWidget {
  const ButtonGradientBackground({
    Key key,
    @required this.size,
    this.namabtn,
    this.press
  }) : super(key: key);

  final Size size;
  final String namabtn;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [
                  const Color(0xff007EF4),
                  const Color(0xff2A75BC)
                ],
              )),
          width: size.width,
          child: Text(
            namabtn,
            style: TextStyle(color: Colors.white, fontSize: 17),
            textAlign: TextAlign.center,
          ),
        )
    );
  }
}