import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:well_app/model/anonymous_user.dart';
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AnonUser>(context);
    print(user);
    //return home atau authenticate page
    return Container();
  }
}
