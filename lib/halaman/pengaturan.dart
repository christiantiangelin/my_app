import 'package:flutter/material.dart';
class Item extends Row{
  Item(String judulMenu,String submenu): super(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        child: Column(
          children: <Widget>[
            Text(judulMenu,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16.0),),
            Text(submenu,style: TextStyle(color: Colors.grey,))
          ],
        ),
      ),
      Container(
        child: Icon(Icons.arrow_forward_ios),
      )
    ],
  );
}
class Pengaturan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengaturan"),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Item("Pengaturan Notifikasi","Kalender Kehamilan,kesuburan,dan lainnya"),
          Item("Laporkan Masalah Teknis","Kendala saat menggunakan aplikasi ini"),
          Item("Kebijakan Privasi",""),
          Item("About","1.17.4"),
          Item("Keluar",""),
        ],
      ),
    );
  }

}
