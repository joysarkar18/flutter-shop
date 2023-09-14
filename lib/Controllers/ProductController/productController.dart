import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_shop/Models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();
  RxBool is_loading = false.obs;
  final _db = FirebaseFirestore.instance;
  RxList products = [].obs;

  getProducts() async {
    is_loading.value = true;
    await _db.collection("products").doc("all").get().then((value) {
      products.value = value["productList"];
      is_loading.value = false;
    });
  }
}
