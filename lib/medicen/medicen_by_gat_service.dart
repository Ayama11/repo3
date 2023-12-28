//import 'package:http/http.dart' as http;

import '../config/config_server.dart';
import '../help/Api.dart';
import 'medicen_bygat_model.dart';

class MedicenCategoriesService {
  Future<List<GategoryMedicenModel>> getCategoriesMedicen({
    required int id,
  }) async {
    List<dynamic> data = await Api()
        .get(url: '${ConfigServer.domainServer}/api/show_medicines/$id');
    {
      List<GategoryMedicenModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          GategoryMedicenModel.fromJson(data[i]),
        );
      }
      return productsList;
    }
  }
}
