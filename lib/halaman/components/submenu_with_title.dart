import 'package:flutter/material.dart';

class SubMenuWithTitle extends StatelessWidget {
  const SubMenuWithTitle({
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
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "$title\n",
                    style: TextStyle(
                      color: Colors.indigo
                    ),
                  ),
                  TextSpan(
                    text: "$subtitle",
                    style: TextStyle(
                      color: Colors.indigo.withOpacity(0.5),
                    ),
                  ),
                ])),
                Spacer(),
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_right), onPressed: null)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
