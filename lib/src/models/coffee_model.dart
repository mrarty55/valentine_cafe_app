class Coffee {
  final String id;
  final String name;
  final String description;
  final double price;
  final String? imageUrl;

  Coffee({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.imageUrl,
  });
}
