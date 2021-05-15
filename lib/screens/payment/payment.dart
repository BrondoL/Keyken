import 'package:flutter/material.dart';
import 'package:keyken/components/default_app_bar.dart';
import 'package:keyken/components/default_button.dart';
import 'package:keyken/constants.dart';
import 'package:keyken/screens/payment/components/header_label.dart';
import 'package:keyken/screens/success/success.dart';
import 'package:keyken/size_config.dart';

class Payment extends StatefulWidget {
  static String routeName = "/payment";
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        text: "Payment",
      ),
      body: Column(
        children: [
          HeaderLabel(
            text: "Choose Your Payment Method",
          ),
          Expanded(
            child: ListView.separated(
              itemCount: paymentLabels.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                    activeColor: kPrimaryColor,
                    value: index,
                    groupValue: value,
                    onChanged: (i) => setState(
                      () => value = i,
                    ),
                  ),
                  title: Text(
                    paymentLabels[index],
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  trailing: Icon(
                    paymentIcons[index],
                    color: value == index ? kPrimaryColor : Colors.black,
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(190),
            child: DefaultButton(
              text: "Pay Now",
              press: () => Navigator.pushNamed(context, Success.routeName),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(50),
          ),
        ],
      ),
    );
  }
}
