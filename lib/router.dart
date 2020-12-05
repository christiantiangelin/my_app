import 'package:flutter/material.dart';
import 'package:well_app/halaman/login/DaftarPage.dart';
import 'package:well_app/halaman/login/LoginPageRequire.dart';
import 'package:well_app/halaman/login/signin.dart';
import 'package:well_app/halaman/menu1/beranda.dart';
import 'package:well_app/halaman/menu4/pengaturan.dart';
import 'package:well_app/halaman/menu_1.dart';
import 'package:well_app/halaman/menu_2.dart';
import 'package:well_app/halaman/menu_3.dart';
import 'package:well_app/halaman/menu_4.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => HomePage());
    case '/signin':
      return MaterialPageRoute(builder: (_) => SignIn());
    case '/login require':
      return MaterialPageRoute(builder: (_) => LoginRequire());
    case '/daftar':
      return MaterialPageRoute(builder: (_) => DaftarPage());
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
    case '/pengaturan':
      return MaterialPageRoute(builder: (_) => Pengaturan());
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
                child: Text('No route defined for ${settings.name}')),
          ));
  }
}