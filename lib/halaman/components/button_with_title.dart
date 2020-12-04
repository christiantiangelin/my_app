import 'package:flutter/material.dart';

class ButtonWithTitle extends StatelessWidget {
  const ButtonWithTitle({
    Key key,
    // @required this.size,
    this.title,
    this.subtitle,
    this.press,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final Function press;
  // final Size size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 10,
                color: Colors.green.withOpacity(0.23),
              )
            ]
        ),
        margin: EdgeInsets.symmetric(
          vertical: 20 / 4,
          horizontal: 20,
        ),
        padding: EdgeInsets.all(20 / 2),
        child: Row(
          children: <Widget>[
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "$title\n",
                    style: TextStyle(color: Colors.indigo)
                  ),
                  TextSpan(
                      text: "$subtitle",
                      style:
                      TextStyle(color: Colors.indigo.withOpacity(0.5))),
                ])),
            Spacer(),
            IconButton(icon: Icon(Icons.keyboard_arrow_right), onPressed: null)
          ],
        ),
      ),
    );
  }
}
