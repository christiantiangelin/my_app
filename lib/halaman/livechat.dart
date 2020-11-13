import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:well_app/halaman/chatReguler.dart';

class LiveChat extends StatefulWidget {
  LiveChat({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LiveChatState createState() => new _LiveChatState();
}

class _LiveChatState extends State<LiveChat>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Live Chat")
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Live Chat"),
                  Row(
                    children: <Widget>[
                      Icon(Icons.account_circle,size: 45.0),
                      Icon(Icons.account_circle,size: 45.0),
                      Icon(Icons.account_circle,size: 45.0),
                      Icon(Icons.account_circle,size: 45.0)
                    ],
                  ),
                  Text("4 Dokter Online"),
                  RaisedButton(
                      child: Text("MULAI CHAT"),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChatReguler())
                        );
                      }
                  )
                ],
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("TOPIK SPESIAL"),
                      Text("2 topik"),
                    ],
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle,size: 45.0),
                    title: Text("Seputar Diabertes"),
                    subtitle: Text("19 Oktober 2020, 10:00-13.00 WIB"),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle,size: 45.0),
                    title: Text("Cara Mudah Turunkan Koresterol"),
                    subtitle: Text("19 Oktober 2020, 14:00-17.00 WIB"),
                    onTap: (){},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}