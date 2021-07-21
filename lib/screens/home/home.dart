import 'package:flutter/material.dart';
import 'package:keyken/components/custom_buttom_nav_bar.dart';
import 'package:keyken/enums.dart';
import 'package:keyken/provider/product_provider.dart';
import 'package:keyken/screens/home/components/body.dart';
import 'package:keyken/size_config.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    ProductProvider.fetchCart();
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
