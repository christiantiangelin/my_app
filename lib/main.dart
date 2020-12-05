import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:well_app/model/anonymous_user.dart';
import 'package:well_app/router.dart' as router;
import 'package:well_app/services/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  bool signin = false;
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AnonUser>.value(
      value: AuthService().user,
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Well App',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.indigo),
          primaryColor: Colors.indigoAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute : "/login require",
        onGenerateRoute: router.generateRoute,
      ),
    );
  }
}
