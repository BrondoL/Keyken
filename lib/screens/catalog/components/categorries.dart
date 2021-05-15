import 'package:flutter/material.dart';
import 'package:keyken/screens/catalog/catalog.dart';

import '../../../constants.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  const Categories({
    Key key,
    @required this.selectedindex,
  }) : super(key: key);
  final int selectedindex;

  @override
  _CategoriesState createState() => _CategoriesState(selectedindex);
}

class _CategoriesState extends State<Categories> {
  int selectedIndex;
  _CategoriesState(this.selectedIndex);
  List<String> categories = [
    "Keyboard",
    "Headset",
    "Mouse",
    "Controller",
    "Others"
  ];
  // By default our first item will be selected
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        selectedIndex = index;
        return Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Catalog(
              selectedIndex: selectedIndex,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
