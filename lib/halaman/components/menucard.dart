import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key key,
    @required this.size,
    this.namaMenu,
    this.page,
    this.image,
  }) : super(key: key);

  final String namaMenu;
  final String page;
  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, page);
        },
        child: Column(
          children: <Widget>[
            // Container(
            //   // width: 120,
            //   // height: 120,
            //   decoration: BoxDecoration(
            //     shape: BoxShape.rectangle,
            //     borderRadius: BorderRadius.circular(10),
            //     boxShadow: [
            //       BoxShadow(
            //         offset: Offset(0, 3),
            //         blurRadius: 10,
            //         color: Colors.blueAccent.withOpacity(0.23),
            //       )
            //     ],
            //     image: DecorationImage(image: AssetImage(image),
            //         // fit: BoxFit.cover
            //     )
            //   ),
            // ),
            Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      // offset: Offset(0, 3),
                      blurRadius: 10,
                      color: Colors.blueAccent.withOpacity(0.23),
                    )
                  ],
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    child: Image.asset(image))),
            // Container(
            //     width: 120,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.only(
            //           bottomLeft: Radius.circular(10),
            //           bottomRight: Radius.circular(10),
            //         ),
            //         boxShadow: [
            //           BoxShadow(
            //             offset: Offset(0, 5),
            //             blurRadius: 3,
            //             color: Colors.blueGrey.withOpacity(0.23),
            //           )
            //         ]
            //     ),
            //     padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
            //     child: Text(namaMenu)
            // ),
          ],
        ),
      ),
    );
  }
}
