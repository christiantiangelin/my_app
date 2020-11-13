import 'package:flutter/material.dart';
import 'package:well_app/halaman/search.dart';

class Dokter extends StatefulWidget {
  @override
  _DokterState createState() => _DokterState();
}

class _DokterState extends State<Dokter> {
  // Size size = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body:Column(
          children: <Widget>[
            Container(
              margin : EdgeInsets.only(left: 20.0,top: 20.0, right: 20.0, bottom: 5.0),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 20,
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
            DokterOnlineCard(
              image: "images/dokter1.jpg",
              nama: "dr. Nofiyanti Nicolas,Sp.A",
              spesialis: "Spesialis Anak",
              rating: "93",
              biayaKonsultasi: "14.900",
            ),
          ],
        )
    )
    );
  }
}

 class DokterOnlineCard extends StatelessWidget {
  const DokterOnlineCard({
    Key key,
    this.image,
    this.nama,
    this.spesialis,
    this.rating,
    this.biayaKonsultasi,
    this.press
 }) : super (key :key);
  final String image,nama,spesialis, rating,biayaKonsultasi;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: press,
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal:10.0, vertical:15.0),
        margin:  EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(image),
                    radius: 24.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "$nama",
                                  style: Theme.of(context).textTheme.button
                              ),
                              TextSpan(
                                  text: "\n$spesialis",
                                  style: TextStyle(
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                              ),
                            ]
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.tag_faces,color: Colors.yellow,),
                          Text("$rating%",style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold),),
                          SizedBox(width: 10.0,),
                          Icon(Icons.account_balance_wallet,color: Colors.deepOrangeAccent,),
                          Text("Rp. $biayaKonsultasi",style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(height: 30.0,)
          ],
        )
      ),
    );
  }
}
