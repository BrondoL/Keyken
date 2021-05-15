import 'package:flutter/material.dart';
import 'package:keyken/components/default_back_btn.dart';
import 'package:keyken/constants.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const DefaultAppBar({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(56.0);
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: TextStyle(color: kPrimaryColor),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: kPrimaryColor),
      leading: DefaultBackButton(),
    );
  }
}
