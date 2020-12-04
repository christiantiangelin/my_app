import 'package:flutter/material.dart';
import 'file:///C:/Users/ASUS/AndroidStudioProjects/well_app/lib/halaman/menu3/infosehat.dart' ;
import 'file:///C:/Users/ASUS/AndroidStudioProjects/well_app/lib/halaman/menu3/spesialis.dart' ;

//=================PROFILE===================
class MenuTiga extends StatefulWidget {
  MenuTiga({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MenuTigaState createState() => new _MenuTigaState();
}

class _MenuTigaState extends State<MenuTiga> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState(){
    _tabController =new TabController(length: 2, vsync: this);
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
        // leading:
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
        ],
        bottom: _buildTabBar(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Infosehat(),
          Spesialis(),
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
          text : "Info Sehat",
        ),
        Tab(
          text : "Spesialis",
        ),
      ],
    );
  }
}

