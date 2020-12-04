import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:well_app/halaman/components/button_with_title.dart';
import 'package:well_app/halaman/components/submenu_with_title.dart';
//=================PROFILE===================
class MenuEmpat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.settings),
                color: Colors.indigo,
                onPressed: () {
                  Navigator.pushNamed(context, "pengaturan");
                },
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: size.width*0.6,
                    height: size.height*0.17,
                    margin: EdgeInsets.only(bottom: 20, left: 30,right: 30,top: 20),
                    padding: EdgeInsets.only(bottom: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 3),
                            blurRadius: 10,
                            color: Colors.blueGrey.withOpacity(0.23),
                          )
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("User",style: TextStyle(color: Colors.indigo,fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("22 tahun",style: TextStyle(color: Colors.grey.withOpacity(0.23)),),
                        InkWell(
                          onTap: (){},
                          child: Text("Lihat Profil",style: TextStyle(color: Colors.blue),),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 0,
                      // right: size.width*0.5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 10,
                              color: Colors.blueGrey.withOpacity(0.23),
                            )
                          ]
                        ),
                        child: Icon(Icons.person,color: Colors.white,size: 50,),
                    )
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 250,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 10,
                        color: Colors.blueGrey.withOpacity(0.23),
                      )
                    ]
                ),
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 15)),
                    SubMenuWithTitle(
                      title: "Peresepan Obat",
                      subtitle: "Daftar transaksi resep dan obat ",
                      press: () {},
                    ),
                    Padding(padding: EdgeInsets.all(10),child: Divider(),),
                    SubMenuWithTitle(
                      title: "Transaksi Chat",
                      subtitle: "Riwayat pembayaran chat",
                      press: () {},
                    ),
                    Padding(padding: EdgeInsets.all(10),child: Divider(),),
                    SubMenuWithTitle(
                      title: "Janji Konsultasi",
                      subtitle: "Informasi jadwal konsultasi di RS/Klinik",
                      press: () {},
                    ),
                  ],
                ),
              ),
              ButtonWithTitle(
                title: "Profil Pasien",
                subtitle: "Kelola informasi data diri pasien",
                press: () {},
              )
            ],
          )
      ),
    );
  }
}
