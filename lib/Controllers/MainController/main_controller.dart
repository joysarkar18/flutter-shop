import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  static MainController get instance => Get.find();
  RxInt navBarIndex = 1.obs;
  RxBool is_loading = true.obs;
}
