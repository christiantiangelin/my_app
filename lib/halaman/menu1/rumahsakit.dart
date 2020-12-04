import 'package:flutter/material.dart';
class RS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Rumah Sakit"),),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left :20.0,
              top: 10.0,
              bottom: 20.0 * 2.5,
            ),
            height: size.width*0.4,
            child: Column(
              children: <Widget>[
                Image.asset("images/medical_team2.jpg"),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: Colors.grey.withOpacity(0.23),
                    )]
                  ),
                )
              ],
            ),
          ),
          FlatButton.icon(
              onPressed: null,
              icon: Icon(Icons.location_on),
              label: Text("Lokasi anda")), //lokasi
          //search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Text("Rekomendasi RS"),
                Spacer(),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.lightBlue[800],
                  onPressed: null,
                  child: Text("Lihat Semua"),
                )
              ],
            ),
          ),
          //RumahSakitcard
          Text("Pilih spesialis"),
          //grid menu
        ],
      ),
    );
  }
}

class RumahSakit extends StatefulWidget {
  @override
  _RumahSakitState createState() => _RumahSakitState();
}

class _RumahSakitState extends State<RumahSakit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rumah Sakit"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton.icon(
              onPressed: null,
              icon: Icon(Icons.location_on),
              label: Text("Lokasi anda")), //lokasi
          //search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Text("Rekomendasi RS"),
                Spacer(),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.lightBlue[800],
                  onPressed: null,
                  child: Text("Lihat Semua"),
                )
              ],
            ),
          ),
          //RumahSakitcard
          Text("Pilih spesialis"),
          //grid menu
        ],
      ),
    );
  }
}

