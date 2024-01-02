import '../Auth/token.dart';
import '../config/config_server.dart';
import '../help/Api.dart';
import 'order_info_model.dart';

class OrderInfoService {
  Future<List<OrderInfo>> orderInfo({
    required int id,
  }) async {
    String? token = await TokenManager.getToken();

    List<dynamic> data = await Api().get(
      url: '${ConfigServer.domainServer}/api/order/info/$id',
      token: token,
      // GlobalData.token
    );
    {
      List<OrderInfo> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          OrderInfo.fromJson(data[i]),
        );
      }
      return productsList;
    }
  }
}
