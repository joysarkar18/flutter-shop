import 'package:flutter/material.dart';
import 'package:flutter_shop/Controllers/Authentication/authentication.dart';
import 'package:flutter_shop/Controllers/ProductController/productController.dart';
import 'package:flutter_shop/Views/Componants/product_card.dart';
import 'package:flutter_shop/Views/Screens/Shopping%20Cart/shopping_cart.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final productController = Get.put(ProductController());
  @override
  void initState() {
    super.initState();
    productController.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FlutterShop"),
        actions: [
          IconButton(
              onPressed: () {
                print('HIII');
                Get.to(() => ShoppingCart());
              },
              icon: const Icon(Icons.shopping_cart_checkout_rounded)),
          IconButton(
              onPressed: () {
                Authentication.instance.logOut();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: Get.height,
                width: Get.width,
                child: Obx(
                  () => GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 0.59,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2),
                    itemCount: productController.products.value.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        name: productController.products.value[index]["name"],
                        description: productController.products.value[index]
                            ["description"],
                        imgUrl: productController.products.value[index]
                            ["imgUrl"],
                        offer: productController.products.value[index]["offer"],
                        price: productController.products.value[index]["price"],
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
