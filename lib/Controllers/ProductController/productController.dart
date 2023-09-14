import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/Models/cart_product.dart';
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

  pushToCart(CartProduct p) async {
    await _db
        .collection("cartProducts")
        .doc(FirebaseAuth.instance.currentUser!.email.toString())
        .get()
        .then((value) {
      print("hudhaskjdhadkjshdk");
      List l = value["cartItems"];
      l.add(p.toJson());
      _db
          .collection("cartProducts")
          .doc(FirebaseAuth.instance.currentUser!.email.toString())
          .update({"cartItems": l}).then((value) {
        Get.snackbar("Added to Cart", "",
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(seconds: 1));
      });
    });
  }
}
