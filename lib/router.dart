import 'package:flutter/material.dart';
import 'package:well_app/halaman/login/LoginPageRequire.dart';
import 'package:well_app/halaman/menu1/beranda.dart';
import 'package:well_app/halaman/menu_1.dart';
import 'package:well_app/halaman/menu_2.dart';
import 'package:well_app/halaman/menu_3.dart';
import 'package:well_app/halaman/menu_4.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => HomePage());
    case '/login require':
      return MaterialPageRoute(builder: (_) => LoginPageR());
    case '/home':
      return MaterialPageRoute(builder: (_) => HomePage());
    case '/beranda':
      return MaterialPageRoute(builder: (_) => MenuSatu());
    case '/chat':
      return MaterialPageRoute(builder: (_) => MenuDua());
    case '/artikel':
      return MaterialPageRoute(builder: (_) => MenuTiga());
    case '/profile':
      return MaterialPageRoute(builder: (_) => MenuEmpat());
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
                child: Text('No route defined for ${settings.name}')),
          ));
  }
}