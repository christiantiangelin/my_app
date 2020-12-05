import 'package:flutter/material.dart';
class ProfilPasien extends StatefulWidget {
  @override
  _ProfilPasienState createState() => _ProfilPasienState();
}

class _ProfilPasienState extends State<ProfilPasien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
        title: Text("Profil Pasien"),
        actions: [
          IconButton(icon: Icon(Icons.search_sharp), onPressed: (){})
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 1.5,style: BorderStyle.solid)
            ),
            child: Row(
              children: [
                Icon(Icons.add),
                Text("Profil Pasien"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
