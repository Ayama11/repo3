import '../config/config_server.dart';
import '../help/Api.dart';
import 'gategory_model.dart';

class CategoriesService {
  Future<List<GategoryModel>> getCategoriesProduct() async {
    try {
      List<dynamic> data = await Api()
          .get(url: '${ConfigServer.domainServer}/api/show_classifications');
      {
        List<GategoryModel> productsList = [];
        for (int i = 0; i < data.length; i++) {
          productsList.add(
            GategoryModel.fromJson(data[i]),
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
