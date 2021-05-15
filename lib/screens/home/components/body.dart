import 'package:flutter/material.dart';
import 'package:keyken/screens/home/components/categories.dart';
import 'package:keyken/screens/home/components/discount_banner.dart';
import 'package:keyken/screens/home/components/home_header.dart';
import 'package:keyken/screens/home/components/popular_product.dart';
import 'package:keyken/screens/home/components/special_offers.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(10)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(10)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
