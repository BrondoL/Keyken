import 'package:flutter/material.dart';
import 'package:keyken/components/custom_buttom_nav_bar.dart';
import 'package:keyken/enums.dart';
import 'package:keyken/screens/home/components/body.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
