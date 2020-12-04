import 'package:flutter/material.dart';

//=================PROFILE===================
class MenuDua extends StatefulWidget {
  MenuDua({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MenuDuaState createState() => new _MenuDuaState();
}

class _MenuDuaState extends State<MenuDua> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState(){
    _tabController =new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: Text("Chat"),
        bottom: _buildTabBar(),
      ),
    );
  }

  TabBar _buildTabBar(){
    return TabBar(
      controller: _tabController,
      labelColor: Colors.white,
      tabs: <Widget>[
        Tab(
          text : "Chat",
        ),
        Tab(
          text : "Dokter",
        ),
        Tab(
          text : "Favorit",
        ),
      ],
    );
  }
}

