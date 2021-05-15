import 'package:flutter/material.dart';

import 'product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({@required this.product, @required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItem: 2),
  Cart(product: demoProducts[4], numOfItem: 1),
  Cart(product: demoProducts[5], numOfItem: 1),
  Cart(product: demoProducts[6], numOfItem: 1),
  Cart(product: demoProducts[7], numOfItem: 4),
];
