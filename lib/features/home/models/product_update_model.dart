class ProductUpdateModel {
  String title;
  double price;
  double discountPercentage;
  String description;
  String brand;
  String category;

  ProductUpdateModel({
    required this.title,
    required this.price,
    required this.discountPercentage,
    required this.description,
    required this.brand,
    required this.category,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'price': price,
      'discountPercentage': discountPercentage,
      'description': description,
      'brand': brand,
      'category': category,
    };
  }

  factory ProductUpdateModel.fromJson(Map<String, dynamic> json) {
    return ProductUpdateModel(
      title: json['title'],
      price: json['price'],
      discountPercentage: json['discountPercentage'],
      description: json['description'],
      brand: json['brand'],
      category: json['category'],
    );
  }
}
