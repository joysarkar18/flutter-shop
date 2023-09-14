import 'package:flutter/material.dart';
import 'package:flutter_shop/Controllers/ProductController/productController.dart';
import 'package:flutter_shop/Views/Componants/cart_card.dart';
import 'package:flutter_shop/Views/Screens/Check%20out%20Screen/check_out_screen.dart';
import 'package:get/get.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  final productController = Get.put(ProductController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productController.getCartProducts();
    productController.calculateTotalPrice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shopping cart")),
      body: Container(
        width: Get.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Obx(() => productController.set.value
              ? SizedBox(
                  height: Get.height * 0.8,
                  child: ListView.builder(
                    itemCount: productController.cartProducts.value.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CartCard(
                        name: productController.cartProducts.value[index]
                            ["name"],
                        description: productController.cartProducts.value[index]
                            ["description"],
                        imgUrl: productController.cartProducts.value[index]
                            ["imgUrl"],
                        count: productController.cartProducts.value[index]
                            ["count"],
                        price: productController.cartProducts.value[index]
                            ["price"],
                        index: index,
                      );
                    },
                  ))
              : SizedBox(
                  height: Get.height * 0.8,
                  child: ListView.builder(
                    itemCount: productController.cartProducts.value.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CartCard(
                        name: productController.cartProducts.value[index]
                            ["name"],
                        description: productController.cartProducts.value[index]
                            ["description"],
                        imgUrl: productController.cartProducts.value[index]
                            ["imgUrl"],
                        count: productController.cartProducts.value[index]
                            ["count"],
                        price: productController.cartProducts.value[index]
                            ["price"],
                        index: index,
                      );
                    },
                  ))),
          Obx(
            () => Container(
                height: Get.height * 0.09,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          Text(
                            "Total Price - ₹",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            productController.totalPrice.value.toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.greenAccent)),
                        onPressed: () {
                          Get.to(() => CheckoutScreen());
                        },
                        child: Text("Continue"))
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
