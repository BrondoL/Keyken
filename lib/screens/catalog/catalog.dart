import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:keyken/components/default_back_btn.dart';
import 'package:keyken/constants.dart';
import 'package:keyken/screens/catalog/components/body.dart';

class Catalog extends StatelessWidget {
  static String routeName = "/catalog";
  const Catalog({
    Key key,
    @required this.selectedIndex,
  }) : super(key: key);
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(
        selectedIndex: selectedIndex,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: DefaultBackButton(),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
