//import 'package:http/http.dart' as http;

import 'package:repopharma_app/Auth/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/config_server.dart';
import '../help/Api.dart';
import 'medicen_bygat_model.dart';

class MedicenCategoriesService {
  Future<List<GategoryMedicenModel>> getCategoriesMedicen({
    required int id,
  }) async {
    String? token = await TokenManager.getToken();
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // String? token = prefs.getString('token');
    List<dynamic> data = await Api().get(
      url: '${ConfigServer.domainServer}/api/show_medicines/$id',
      token: token,
      // GlobalData.token
    );
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
