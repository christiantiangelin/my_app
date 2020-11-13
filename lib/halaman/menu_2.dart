import 'package:flutter/material.dart';
import 'package:well_app/halaman/infosehat.dart' ;
import 'package:well_app/halaman/spesialis.dart' ;

// void main(){
//   runApp(
//       new MaterialApp(
//         title: "Artikel",
//         home: new MenuDua(),
//       )
//   );
// }


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

