class Product {
  int id;
  String title, description, image;
  List colors;
  double rating, price;
  bool isFavourite, isPopular;
  int categorie;

  Product({
    this.id,
    this.colors,
    this.categorie,
    this.image,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    this.title,
    this.price,
    this.description,
  });

  Product.fromJson(object) {
    id = object['id'];
    colors = object['colors'];
    title = object['title'];
    price = (object['price']).toDouble();
    description = object['description'];
    categorie = object['categorie'];
    image = object['image'];
    rating = (object['rating']).toDouble();
    isFavourite = object['isFavourite'];
    isPopular = object['isPopular'];
  }
}

// Our demo Products

List<Product> demoProducts;
