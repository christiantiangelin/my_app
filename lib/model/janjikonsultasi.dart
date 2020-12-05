import 'package:flutter/material.dart';

class JanjiKonsultasi{
  String status;
  int noAntrian;
  DateTimeRange waktuPelayanan;
  String kodeBooking;
  String namaPasien;
  String klinik;
  String tenagaMedis;

  JanjiKonsultasi( String status,int noAntrian,DateTimeRange waktuPelayanan,String kodeBooking,String namaPasien,String klinik,String tenagaMedis){
    this.status = status;
    this.noAntrian = noAntrian;
    this.waktuPelayanan = waktuPelayanan;
    this.kodeBooking = kodeBooking;
    this.namaPasien = namaPasien;
    this.klinik = klinik;
    this.tenagaMedis = tenagaMedis;
  }
}