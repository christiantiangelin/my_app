class User{
  String nomorPonsel;
  String email;
  bool jenisKelamin;
  DateTime tanggalLahir;
  int tinggiBadan = 0;
  int beratBadan = 0;
  String golonganDarah;
  String alamat;

  User(String nomorPonsel,String email, DateTime tglLahir ){
    this.nomorPonsel = nomorPonsel;
    this.email = email;
    this.tanggalLahir = tglLahir;
  }
}