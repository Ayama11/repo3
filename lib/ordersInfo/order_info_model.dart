class OrderInfo {
  final String name;
  final int quantity;
  final int priceMed;
  final int priceQU;

  OrderInfo({
    required this.quantity,
    required this.priceMed,
    required this.name,
    required this.priceQU,
  });
  factory OrderInfo.fromJson(jsonData) {
    return OrderInfo(
      name: jsonData['med_name'],
      quantity: jsonData['quantity'],
      priceMed: jsonData['med_price'],
      priceQU: jsonData['quantity_price'],
    );
  }
}
