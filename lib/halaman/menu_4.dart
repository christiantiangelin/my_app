import 'package:flutter/material.dart';
import 'package:well_app/halaman/pengaturan.dart';
void main() {
  runApp(new MaterialApp(
    title: "Profile",
    home: new MenuEmpat(),
  ));
}
class Item extends Row{
  Item(String judulMenu,String submenu): super(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(judulMenu,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16.0),),
            Text(submenu,style: TextStyle(color: Colors.grey,))
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(2.0),
        child: Column(
          children: <Widget>[
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      )
    ],
  );
}
class MenuEmpat extends StatefulWidget {
  MenuEmpat({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MenuEmpatState createState() => new _MenuEmpatState();
}

class _MenuEmpatState extends State<MenuEmpat> {
  @override
  Widget build(BuildContext context) {
    String nama = "Anna";
    int umur = 0;
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pengaturan())
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                  boxShadow: [BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.blueGrey[800].withOpacity(0.23),
                  )]

              ),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(Icons.account_box,color: Colors.grey,),
                  ),
                  Text(nama),
                  Text(umur.toString()+" tahun"),
                ],
              ),
              padding: EdgeInsets.only(left: 50.0,top: 20.0, right: 50.0,bottom: 20.0),
              margin: EdgeInsets.all(20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 210,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: Offset(0, 2),
                )
              ]
            ),
            child: Column(
              children: <Widget>[
                Item("Peresepan Obat", "Daftar transaksi resep dan obat "),
                Item("Transaksi Chat","Riwayat pembayaran chat"),
                Item("Janji Konsultasi","Informasi jadwal konsultasi di RS/Klinik"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2),
                  )
                ]
            ),
            child: Column(
              children: <Widget>[
                Item("Profil Pasien","Kelola informasi data diri pasien")
              ],
            ),
          ),
        ],
      )
    );
  }
}

