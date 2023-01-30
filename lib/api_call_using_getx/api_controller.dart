import 'dart:developer';
import 'package:get/get.dart';

import '../network/api_provider.dart';
import '../network/send_api_demo.dart';

class ApiController extends GetxController {
  List dataResponse = [].obs;
  RxBool loading = false.obs;
  final ApiProvider _apiProvider = ApiProvider();
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    loading.value = true;

    List<Album> products = await _apiProvider.fetchData();
    dataResponse.assignAll(products);
    log("${dataResponse.length}");

    loading.value = false;
  }
}
