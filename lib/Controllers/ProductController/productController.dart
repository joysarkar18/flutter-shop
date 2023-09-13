import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();
  RxBool is_loading = false.obs;
  final _db = FirebaseFirestore.instance;

  getProducts() {
    
  }
}
