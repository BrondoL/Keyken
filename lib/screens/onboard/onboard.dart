import 'package:flutter/material.dart';
import 'package:keyken/screens/onboard/components/body.dart';
import 'package:keyken/size_config.dart';

class Onboard extends StatelessWidget {
  static String routeName = "/onboard";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
