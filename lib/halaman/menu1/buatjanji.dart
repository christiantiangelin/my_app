import 'package:flutter/material.dart';
import 'package:well_app/halaman/components/doktercard.dart';
import 'package:well_app/halaman/components/title_subtitle.dart';

class BuatJanji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
        title: Text("Buat Janji Konsultasi Baru"),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.only(top: 10.0,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleSubtitle(title: "Pilih Tenaga Medis",subtitle: "Klinik Kasih Farma",),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      DokterCard(image: "images/dokter1.jpg",namadokter: "dr.Fahimul Ilmi Sholeh",spesialis: "Dokter Umum",size: size,),
                      DokterCard(image: "images/dokter1.jpg",namadokter: "dr.Fahimul Ilmi Sholeh",spesialis: "Dokter Umum",size: size),
                      DokterCard(image: "images/dokter1.jpg",namadokter: "dr.Fahimul Ilmi Sholeh",spesialis: "Dokter Umum",size: size),
                      DokterCard(image: "images/dokter1.jpg",namadokter: "dr.Fahimul Ilmi Sholeh",spesialis: "Dokter Umum",size: size),
                    ],
                  ),
                ),
                TitleSubtitle(title: "Pilih Tanggal Konsultasi",subtitle: "",),
                //datepicker
                TitleSubtitle(title: "Waktu Konsultasi",subtitle: "",),
                //jam
                TitleSubtitle(title: "Pilih Metode Pembayaran",subtitle: "",),
                //clips metode pembayaran
                RaisedButton(
                    child: Text("Buat Janji"),
                    onPressed: (){}
                ),
              ],
            ),
          )
      ),
    );
  }
}
