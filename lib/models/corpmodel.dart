class CorpModel {
  final String name;
  final String fullName;
  final double price;
  final int quantity;
  final double costPrice;

  CorpModel({
    required this.name,
    required this.fullName,
    required this.price,
    required this.quantity,
  }) : costPrice = price * quantity;
}