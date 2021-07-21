import 'package:flutter/material.dart';
import 'package:keyken/constants.dart';
import 'package:keyken/models/cart.dart';
import 'package:keyken/provider/product_provider.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class Cart extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    ProductProvider.fetchCart();
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
