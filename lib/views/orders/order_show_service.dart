import '../../Auth/token.dart';
import '../../config/config_server.dart';
import '../../gategory_view/gategory_model.dart';
import '../../help/Api.dart';
import 'order_show_model.dart';

class OrderShowService {
  Future<List<ShowOrderModel>> showOrder() async {
    try {
      String? token = await TokenManager.getToken();

      List<dynamic> data = await Api().get(
          url: '${ConfigServer.domainServer}/api/orders/show', token: token);
      {
        List<ShowOrderModel> productsList = [];
        for (int i = 0; i < data.length; i++) {
          productsList.add(
            ShowOrderModel.fromJson(data[i]),
          );
        }
        return productsList;
      }
    } catch (e) {
      print('error');

      rethrow;
    }
  }
}
