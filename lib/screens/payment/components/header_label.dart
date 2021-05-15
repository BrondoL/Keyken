import 'package:flutter/material.dart';
import 'package:keyken/constants.dart';

class HeaderLabel extends StatelessWidget {
  final String text;
  const HeaderLabel({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPaddin),
      child: Text(
        text,
        style: TextStyle(
          color: kTextLightColor,
          fontSize: 28.0,
        ),
      ),
    );
  }
}
