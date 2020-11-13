import 'package:flutter/material.dart';
import 'package:well_app/halaman/pesan.dart' as pesan;
import 'package:well_app/halaman/dokter.dart' as dokter;
import 'package:well_app/halaman/favorit.dart' as favorit;

void main(){
  runApp(
      new MaterialApp(
        title: "Chat",
        home: new MenuTiga(),
      )
  );
}
class MenuTiga extends StatefulWidget {
  MenuTiga({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MenuTigaState createState() => _MenuTigaState();
}

class _MenuTigaState extends State<MenuTiga>  with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync:this, length: 3);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        bottom: _buildTabBar(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          new pesan.Pesan(),
          new dokter.Dokter(),
          new favorit.Favorit(),
        ],
      ),
    );
  }
  TabBar _buildTabBar(){
    return TabBar(
      controller: _tabController,
      labelColor: Colors.white,
      tabs: <Widget>[
        Tab(
          text : "PESAN",
        ),
        Tab(
          text : "DOKTER",
        ),
        Tab(
          text : "FAVORIT",
        ),
      ],
    );
  }
}
