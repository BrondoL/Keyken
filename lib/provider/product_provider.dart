import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:keyken/models/cart.dart';
import 'dart:convert';

import 'package:keyken/models/product.dart';

class ProductProvider {
  static final String apiUrl = "https://keyken.000webhostapp.com/product";

  static Future<List<Product>> fetchData() async {
    var result = await http.get(Uri.parse(apiUrl));
    List data = jsonDecode(result.body);
    List<Product> myProducts =
        data.map((item) => Product.fromJson(item)).toList();
    demoProducts = myProducts;
    return myProducts;
  }

  static Future<http.Response> addToCart(int idProduct, int qty) {
    String url = "https://keyken.000webhostapp.com/cart";
    return http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'id_product': idProduct,
        'user_id': FirebaseAuth.instance.currentUser.uid,
        'qty': qty
      }),
    );
  }

  static fetchCart() async {
    String url = "https://keyken.000webhostapp.com/cart/" +
        FirebaseAuth.instance.currentUser.uid;
    var result = await http.get(Uri.parse(url));
    var data = json.decode(result.body);
    demoCarts.clear();
    data.forEach((element) {
      demoCarts.add(Cart(
          product: demoProducts[int.parse(element['id_product']) - 1],
          numOfItem: int.parse(element['qty'])));
    });
  }

  static deleteCart(int id) async {
    String url = "https://keyken.000webhostapp.com/Home/hapus/" +
        id.toString() +
        "/" +
        FirebaseAuth.instance.currentUser.uid;
    print(url);
    await http.get(Uri.parse(url));
  }

  static deleteAllCart() async {
    String url = "https://keyken.000webhostapp.com/Home/hapusSemua/" +
        FirebaseAuth.instance.currentUser.uid;
    await http.get(Uri.parse(url));
  }
}
