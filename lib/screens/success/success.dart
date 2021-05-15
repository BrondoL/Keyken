import 'package:flutter/material.dart';
import 'package:keyken/components/default_button.dart';
import 'package:keyken/screens/home/home.dart';
import 'package:keyken/screens/success/components/subtitle.dart';
import 'package:keyken/size_config.dart';

import 'components/emptysection.dart';

class Success extends StatefulWidget {
  static String routeName = "/success";
  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EmptySection(
              emptyImg: "assets/images/check-circle.gif",
              emptyMsg: "Successfull",
            ),
            SubTitle(
              text: "Your payment was done successfully",
            ),
            SizedBox(
              width: getProportionateScreenWidth(300),
              child: DefaultButton(
                text: "OK",
                press: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
