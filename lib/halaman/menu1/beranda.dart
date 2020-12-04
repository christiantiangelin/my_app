import 'package:well_app/halaman/menu_1.dart' as menu1;
import 'package:well_app/halaman/menu_2.dart' as menu2;
import 'package:well_app/halaman/menu_3.dart' as menu3;
import 'package:well_app/halaman/menu_4.dart' as menu4;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  final _widgetOptions = [
    menu1.MenuSatu(),
    menu2.MenuDua(),
    menu3.MenuTiga(),
    menu4.MenuEmpat(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = TabController(vsync:this, length: 3);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState

  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Artikel'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profil'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}