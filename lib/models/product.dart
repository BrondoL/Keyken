import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description, image;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;
  final int categorie;

  Product({
    @required this.id,
    @required this.colors,
    this.categorie,
    this.image,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    image: "assets/images/11 Digital Alliance Meca Air.png",
    colors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.white,
    ],
    title: "DA Meca Air",
    price: 64.99,
    description:
        "Detachable Type-C To USB Cable Wireless bisa pake Bluetooth Tidak ada software & No macro Kapasitas Baterai 1850 mAh compatibel mac dan windows Hotswaps",
    rating: 4.8,
    isFavourite: true,
    categorie: 0,
  ),
  Product(
    id: 2,
    image: "assets/images/12 Razer Blackwidow.png",
    colors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.white,
    ],
    title: "Razer Blackwidow",
    price: 64.99,
    description:
        "Detachable Type-C To USB Cable Wireless bisa pake Bluetooth Tidak ada software & No macro Kapasitas Baterai 1850 mAh compatibel mac dan windows Hotswaps",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    categorie: 0,
  ),
  Product(
    id: 3,
    image: "assets/images/13 Razer Huntsman.png",
    colors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.white,
    ],
    title: "Razer Huntsman",
    price: 64.99,
    description:
        "Detachable Type-C To USB Cable Wireless bisa pake Bluetooth Tidak ada software & No macro Kapasitas Baterai 1850 mAh compatibel mac dan windows Hotswaps",
    rating: 4.8,
    isFavourite: true,
    categorie: 0,
  ),
  Product(
    id: 4,
    image: "assets/images/14 Digital Alliance Meca Warrior.png",
    colors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.white,
    ],
    title: "DA Meca Warrior",
    price: 64.99,
    description:
        "Detachable Type-C To USB Cable Wireless bisa pake Bluetooth Tidak ada software & No macro Kapasitas Baterai 1850 mAh compatibel mac dan windows Hotswaps",
    rating: 4.8,
    isFavourite: true,
    categorie: 0,
  ),
  Product(
    id: 5,
    image: "assets/images/15 Steelseries Apex Pro TKL.png",
    colors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.white,
    ],
    title: "Steelseries Apex pro",
    price: 64.99,
    description:
        "Detachable Type-C To USB Cable Wireless bisa pake Bluetooth Tidak ada software & No macro Kapasitas Baterai 1850 mAh compatibel mac dan windows Hotswaps",
    rating: 4.8,
    isFavourite: true,
    categorie: 0,
  ),
  Product(
    id: 6,
    image: "assets/images/16 Logitech G733.png",
    colors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.white,
    ],
    title: "Logitech G733",
    price: 64.99,
    description:
        "Detachable Type-C To USB Cable Wireless bisa pake Bluetooth Tidak ada software & No macro Kapasitas Baterai 1850 mAh compatibel mac dan windows Hotswaps",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    categorie: 1,
  ),
  Product(
    id: 7,
    image: "assets/images/17 Razer Viper.png",
    colors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.white,
    ],
    title: "Razer Viper",
    price: 64.99,
    description:
        "Detachable Type-C To USB Cable Wireless bisa pake Bluetooth Tidak ada software & No macro Kapasitas Baterai 1850 mAh compatibel mac dan windows Hotswaps",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    categorie: 2,
  ),
  Product(
    id: 8,
    image: "assets/images/18 Razer Raiju.png",
    colors: [
      Colors.black,
      Colors.red,
      Colors.blue,
      Colors.white,
    ],
    title: "Razer Raiju",
    price: 64.99,
    description:
        "Detachable Type-C To USB Cable Wireless bisa pake Bluetooth Tidak ada software & No macro Kapasitas Baterai 1850 mAh compatibel mac dan windows Hotswaps",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    categorie: 3,
  ),
];