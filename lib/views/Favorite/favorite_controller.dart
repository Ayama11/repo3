import 'package:get/get.dart';

import '../../medicen/medicen_bygat_model.dart';

class FavoriteController extends GetxController {
  var numOfItem = 0.obs;
  var favList = <GategoryMedicenModel>[].obs;
  var isFavorite = false.obs;

  void addFavoritList(GategoryMedicenModel fav) {
    if (!favList.contains(fav)) {
      favList.add(fav);
      numOfItem++;
      isFavorite.value = true;
    } else {
      Get.snackbar('Already There', 'you already like this');
    }
  }
}
