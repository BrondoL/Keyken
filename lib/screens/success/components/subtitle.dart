import 'package:flutter/material.dart';
import 'package:keyken/constants.dart';

class SubTitle extends StatelessWidget {
  final String text;
  const SubTitle({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPaddin, vertical: 40),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18.0,
          color: kSecondaryColor,
        ),
      ),
    );
  }
}
