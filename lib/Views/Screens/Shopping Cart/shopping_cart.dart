import 'package:flutter/material.dart';
import 'package:flutter_shop/Views/Componants/cart_card.dart';
import 'package:get/get.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shopping cart")),
      body: Container(
        width: Get.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 10,
          ),
          CartCard(),
        ]),
      ),
    );
  }
}
