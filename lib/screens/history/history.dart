import 'package:flutter/material.dart';
import 'package:keyken/components/custom_buttom_nav_bar.dart';
import 'package:keyken/components/default_app_bar.dart';
import 'package:keyken/enums.dart';

class History extends StatefulWidget {
  static String routeName = "/History";
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        text: "History",
      ),
      body: Scaffold(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.history),
    );
  }
}
