import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:well_app/halaman/search.dart';
// import 'package:klikdokter_app/widget/menuicon.dart';

class MenuSatu extends StatefulWidget {
  MenuSatu({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MenuSatuState createState() => new _MenuSatuState();
}

class _MenuSatuState extends State<MenuSatu>{
  TextEditingController searchController = TextEditingController();
  GlobalKey <FormState> formKey = GlobalKey <FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.lightBlue[800],
            title: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "klik",style: TextStyle(color: Colors.lightGreen[600],fontSize: 26.0,)),
                    TextSpan(text: "dokter", style: TextStyle(color: Colors.white,fontSize: 28.0)),
                  ]
                ),
              )
              // Image.asset(
              //   "images/logo_appbar_klikdoter.png",
              //   // height: 100.0,
              //  // width: 100.0,
              // ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.people),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Search())
                  );
                },
              ),
            ],
          ),
          body: new Column(
            children: <Widget>[
              Container(
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
                            child: Text(" Selamat Datang",style: Theme.of(context).textTheme.headline5.copyWith(
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
              SizedBox(height: 30.0,),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: <Widget>[
                    // MenuIcons(),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Card(
                              elevation: 5,
                              margin: EdgeInsets.all(10.0),
                              child:
                              Container(child: Icon(Icons.question_answer,size: 43.0,color: Colors.blue,),padding: EdgeInsets.all(5.0),)
                          ),
                          Text('Konsultasi'),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            elevation: 5,
                            margin: EdgeInsets.all(12.0),
                            child:Icon(
                              Icons.favorite,
                              color: Colors.blue,
                              size: 50.0,
                            ),
                          ),
                          Text('Info Sehat'),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            elevation: 5,
                            margin: EdgeInsets.all(12.0),
                            child:Icon(
                              Icons.local_hospital,
                              color: Colors.blue,
                              size: 50.0,
                            ),
                          ),
                          Text('Klinik'),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            elevation: 5,
                            margin: EdgeInsets.all(12.0),
                            child:Icon(
                              Icons.add_shopping_cart,
                              color: Colors.blue,
                              size: 50.0,
                            ),
                          ),
                          Text('Rumah Sakit'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}

class KlikDokterAppBar extends AppBar {
  KlikDokterAppBar()
      : super(
      elevation: 0.25,
      backgroundColor: Colors.white,
      flexibleSpace: _buildKlikDokterAppBar());

  static Widget _buildKlikDokterAppBar() {
    return new Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Image.asset(
            "images/logo_appbar_klikdoter.png",
            height: 100.0,
//            width: 100.0,
          ),
        ],
      ),
    );
  }
}