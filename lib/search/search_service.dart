import 'package:repopharma_app/config/config_server.dart';
import 'package:repopharma_app/search/search_model.dart';

import '../help/Api.dart';

class SearchService {
  Future<List<SearchMedicenModel>> search({
    required String com,
  }) async {
    var data = await Api().post(
      url: '${ConfigServer.domainServer}/api/search_medicine',
      body: {
        'commercial_name': com,
      },
    );

    {
      List<SearchMedicenModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          SearchMedicenModel.fromJson(data[i]),
        );
      }
      return productsList;
    }
  }
}
/*
 Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else if (response.statusCode == 404 ||
        response.statusCode == 422 ||
        response.statusCode == 500) {
      return Get.defaultDialog(title: "erer");
    }
  }





*/ 