import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          new Container(
            height: size.height *0.2,
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height *0.2-27,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[800],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left : 20.0),
                        child: Text(" Cari Obat",style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left:0,
                  right:0,
                  child: Container(
                    margin : EdgeInsets.symmetric(horizontal: 20.0),
                    height: 54,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.lightBlue[800].withOpacity(0.23),
                        )]
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding : EdgeInsets.only(left: 20.0),
                            child: TextField(
                              onChanged: (value){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Search())
                                );
                              },
                              decoration: InputDecoration(
                                hintText: "Search",
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Container(padding: EdgeInsets.only(right: 20.0),child: Icon(Icons.search)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}