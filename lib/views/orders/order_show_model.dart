class ShowOrderModel {
  final int id;
  final String status;
  final String payment;
  final String userName;
  final int totalPrice;
  final String date;

  ShowOrderModel(
      {required this.status,
      required this.payment,
      required this.id,
      required this.userName,
      required this.totalPrice,
      required this.date});
  factory ShowOrderModel.fromJson(jsonData) {
    return ShowOrderModel(
        id: jsonData['order_id'],
        status: jsonData['order_status'],
        payment: jsonData['payment_status'],
        userName: jsonData['user_name'],
        totalPrice: jsonData['total_price'],
        date: jsonData['date']);
  }
}
