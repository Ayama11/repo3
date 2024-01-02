import 'dart:convert';

import 'package:repopharma_app/Auth/token.dart';

import '../cart/cart_list_item_model.dart';
import '../cart/cart_model.dart';
import '../config/config_server.dart';
import 'package:http/http.dart' as http;

class CreateOrderService {
  Future<bool> orderService(List<CartItemModel> items) async {
    var order = [];
    for (var e in items) {
      order.add(ShowOrderInfo(medicineId: e.item.id, neededQuantity: e.qty));
    }
    String? token = await TokenManager.getToken();

    for (var e in order) {
      print(e.medicineId);
      print(e.neededQuantity);
    }
    print(order.length);
    print(jsonEncode(order));
    final Uri url = Uri.parse('${ConfigServer.domainServer}/api/order/create');
    var data = await http.post(
      url,
      body: jsonEncode(order),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    print(data.statusCode);

    return data.statusCode == 200;
  }
}
