import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:keyken/models/cart.dart' as Carts;
import 'package:keyken/models/product.dart';
import 'package:keyken/provider/product_provider.dart';
import 'package:keyken/screens/cart/cart.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: kPrimaryColor,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: kPrimaryColor,
              ),
              onPressed: () {
                Carts.demoCarts.add(Carts.Cart(product: product, numOfItem: 1));
                ProductProvider.addToCart(product.id, 1);
                return Navigator.pushNamed(context, Cart.routeName);
              },
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: kPrimaryColor,
                onPressed: () {
                  Carts.demoCarts
                      .add(Carts.Cart(product: product, numOfItem: 1));
                  ProductProvider.addToCart(product.id, 1);
                  return Navigator.pushNamed(context, Cart.routeName);
                },
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
