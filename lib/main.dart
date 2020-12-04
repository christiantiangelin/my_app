import 'package:flutter/material.dart';
import 'package:well_app/services/routes.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.indigo),
        primaryColor: Colors.indigoAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute : "/",
      onGenerateRoute: router.generateRoute,
    );
  }
}
