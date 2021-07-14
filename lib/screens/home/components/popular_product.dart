import 'package:flutter/material.dart';
import 'package:keyken/components/product_card.dart';
import 'package:keyken/provider/product_provider.dart';
import 'package:keyken/screens/details/details.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        FutureBuilder(
          future: ProductProvider.fetchData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      snapshot.data.length,
                      (index) {
                        if (snapshot.data[index].isPopular)
                          return ProductCard(
                            product: snapshot.data[index],
                            press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Details(
                                  product: snapshot.data[index],
                                ),
                              ),
                            ),
                          );

                        return SizedBox
                            .shrink(); // here by default width and height is 0
                      },
                    ),
                    SizedBox(width: getProportionateScreenWidth(20)),
                  ],
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ],
    );
  }
}
