class Product {
  /*
  - id: int || - title: String || - description: String || - price: double || - image: String || - rating: double |-------------------------------| + Product() || + fromJson(Map<String, || dynamic> json): Product |-------------------------------

  */

  int id;
  String title;
  String description;
  double price;
  String image;
  double rating;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      image: json['thumbnail'],
      rating: json['rating'],
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Product{id: $id, title: $title, description: $description, price: $price, image: $image, rating: $rating}';
  }
}
