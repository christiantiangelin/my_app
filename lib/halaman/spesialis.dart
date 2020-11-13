import 'package:flutter/material.dart';
class SubSpesialis extends Card{

}
class Spesialis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text('Spesialis Anak'),
                subtitle: Text("Dr.XXXXXX"),//jangan lupa xxxxx di ganti jadi nama dokter
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              subtitle: Text("Dr.XXXXXX"),//jangan lupa xxxxx di ganti jadi nama dokter
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('Camera'),
              subtitle: Text("Dr.XXXXXX"),//jangan lupa xxxxx di ganti jadi nama dokter
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Message'),
              subtitle: Text("Dr.XXXXXX"),//jangan lupa xxxxx di ganti jadi nama dokter
            ),

          ],
        ),
      ),
    );
  }
}