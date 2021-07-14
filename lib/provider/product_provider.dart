import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:keyken/models/product.dart';

class ProductProvider {
  static final String apiUrl = "https://keyken.000webhostapp.com/product";

  static Future<List<Product>> fetchData() async {
    var result = await http.get(Uri.parse(apiUrl));
    List data = jsonDecode(result.body);
    List<Product> demoProducts =
        data.map((item) => Product.fromJson(item)).toList();
    return demoProducts;
  }
}
