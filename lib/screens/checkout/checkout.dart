import 'package:flutter/material.dart';
import 'package:keyken/components/default_button.dart';
import 'package:keyken/constants.dart';
import 'package:keyken/screens/checkout/promo_item.dart';
import 'package:keyken/screens/payment/payment.dart';
import 'package:keyken/size_config.dart';

class Checkout extends StatefulWidget {
  static String routeName = "/checkout";
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  Color active;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: LayoutBuilder(
          builder: (_, constraints) => SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: kToolbarHeight),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Unpaid',
                            style: TextStyle(
                              color: darkGrey,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CloseButton(),
                        ],
                      ),
                    ),
                    PromoItem(),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadow,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            title: Text('Shipping'),
                            trailing: Text('19.000'),
                          ),
                          ListTile(
                            title: Text('Tax'),
                            trailing: Text('3.500'),
                          ),
                          ListTile(
                            title: Text('Subtotal'),
                            trailing: Text('76.93'),
                          ),
                          ListTile(
                            title: Text('Promocode'),
                            trailing: Text('-10.93'),
                          ),
                          Divider(),
                          ListTile(
                            title: Text(
                              'Total',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            trailing: Text(
                              '\$ 66.93',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(190),
                      child: DefaultButton(
                        text: "Choose Payment",
                        press: () =>
                            Navigator.pushNamed(context, Payment.routeName),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
