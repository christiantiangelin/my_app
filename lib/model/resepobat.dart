class ResepObat{
  String namaResep;
  DateTime tanggalResep;
  DateTime jamKadaluarsaResep;
  List<String> obat;

  ResepObat(Map<String,dynamic> data){
    this.namaResep = data['namaResep'];
    this.tanggalResep= data['tanggalResep'];
    this.jamKadaluarsaResep = data['jamKadaluarsaResep'];
    data['obat'].forEach((obat){
      this.obat.add(obat);
    });
  }
}