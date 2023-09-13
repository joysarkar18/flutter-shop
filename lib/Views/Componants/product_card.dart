import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        width: Get.width * 0.5,
        child: Column(children: [
          Image(
              height: 265,
              image: NetworkImage(
                  "https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1690272770_1190606.jpg?format=webp&w=480&dpr=1.0")),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4, top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "H&M T-Shirt",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                Icon(
                  Icons.add_shopping_cart_rounded,
                  size: 22,
                  color: Colors.black54,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                Text(
                  "pure cotton",
                  style: TextStyle(color: Colors.black45),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                Text(
                  "₹899",
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 141, 7),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "54% OFF",
                  style: TextStyle(color: Colors.orange, fontSize: 12),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
