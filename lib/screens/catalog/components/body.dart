import 'package:flutter/material.dart';
import 'package:keyken/models/product.dart';
import 'package:keyken/screens/details/details.dart';
import '../../../constants.dart';
import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.selectedIndex,
  }) : super(key: key);
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts =
        demoProducts.where((item) => item.categorie == selectedIndex).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Categories(
          selectedindex: selectedIndex,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: filteredProducts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                return ItemCard(
                  product: filteredProducts[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(
                        product: filteredProducts[index],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
