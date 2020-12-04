import 'package:flutter/material.dart';

class Dokter extends StatefulWidget {
  @override
  _DokterState createState() => _DokterState();
}

class _DokterState extends State<Dokter> {
  // Size size = MediaQuery.of(context).size;
  String countDokter = "5";
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin : EdgeInsets.only(left: 20.0,top: 20.0, right: 20.0, bottom: 5.0),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(style: BorderStyle.solid,color: Colors.grey),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding : EdgeInsets.only(left: 20.0),
                      child: TextField(
                        onChanged: (value){},
                        decoration: InputDecoration(
                          hintText: "Cari Dokter",
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
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(countDokter+' Dokter Online ',style: TextStyle(fontSize: 16.0),),
            ),
            _dokterOnlineItem(Icons.person,"dr. Mentari Wijaya", "Spesialis Anak", "98", "10.000"),
            _dokterOnlineItem(Icons.person,"dr. Henry Tanusaputera", "Dokter Umu", "40", "50.000"),
            _dokterOnlineItem(Icons.person,"dr. James Watt", "Spesialis Jantung", "76", "25.000"),
            _dokterOnlineItem(Icons.person,"dr. Alison Smith", "Spesialis Kandungan", "100", "30.000"),

            // DokterOnlineCard(
            //   image: "images/dokter1.jpg",
            //   nama: "dr. Nofiyanti Nicolas,Sp.A",
            //   spesialis: "Spesialis Anak",
            //   rating: "93",
            //   biayaKonsultasi: "14.900",
            // ),
          ],
        )
    )
    );
  }
}

_dokterOnlineItem(iconImage, nama, spesialis,rating,biayaKonsultasi) {
  return GestureDetector(
    child: Container(
      padding: EdgeInsets.symmetric(vertical:5.0,horizontal: 15.0),
      child: Column(
        children: <Widget>[
          Divider(thickness: 1.0,color: Colors.grey[300],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10.0,),
              Container(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  child: Icon(
                    iconImage,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  backgroundColor: Colors.lightBlue[800],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(nama,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey)),
                  Text(spesialis, style: TextStyle(color: Colors.grey.withOpacity(0.5),)),
                  Row(
                    children: <Widget>[
                      Icon(Icons.tag_faces,color: Colors.yellow,),
                      Text(rating,style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold),),
                      SizedBox(width: 10.0,),
                      Icon(Icons.account_balance_wallet,color: Colors.deepOrangeAccent,),
                      Text("Rp. "+biayaKonsultasi,style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
    onTap: () {
      // Navigator.pushNamed(context, page);
    },
  );
}

