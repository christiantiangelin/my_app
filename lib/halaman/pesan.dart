import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:well_app/halaman/livechat.dart';

class Pesan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LiveChat())
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [BoxShadow(
                      offset: Offset(2,2),
                      blurRadius: 2,
                      color: Colors.grey[800].withOpacity(0.23),
                    )]
                ),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.chat,size: 45.0, color: Colors.indigo,),
                    Text("Live Chat"),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle,size: 45.0),
              title: Text("Dr.Septiani Timurtini"),
              subtitle: Text("KlikDokter : Konsultasi berakhir"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.account_circle,size: 45.0),
              title: Text("Dr.Septiani Timurtini"),
              subtitle: Text("KlikDokter : Konsultasi berakhir"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.account_circle,size: 45.0),
              title: Text("Dr.Septiani Timurtini"),
              subtitle: Text("KlikDokter : Konsultasi berakhir"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.account_circle,size: 45.0),
              title: Text("Dr.Septiani Timurtini"),
              subtitle: Text("KlikDokter : Konsultasi berakhir"),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}