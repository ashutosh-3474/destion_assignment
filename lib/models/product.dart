class Product {
  final String name;
  final double price;
  final String imageUrl;
  final double? discount;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    this.discount,
  });
}