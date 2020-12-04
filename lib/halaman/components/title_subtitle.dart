import 'package:flutter/material.dart';

class TitleSubtitle extends StatelessWidget {
  const TitleSubtitle({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left : 10.0),
      child: RichText(
        textAlign: TextAlign.left,
          text: TextSpan(children: [
            TextSpan(
              text: "$title\n",
              style: Theme.of(context).textTheme.button,
            ),
            TextSpan(
              text: "$subtitle",
              style: TextStyle(
                color: Colors.green.withOpacity(0.5),
              ),
            ),
          ]
          )
      ),
    );
  }
}
