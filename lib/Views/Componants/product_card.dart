import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String description;
  final String imgUrl;
  final int price;
  final int offer;

  const ProductCard(
      {super.key,
      required this.name,
      required this.description,
      required this.imgUrl,
      required this.price,
      required this.offer});

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
          Image(height: 265, image: NetworkImage(imgUrl)),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4, top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: Get.width * 0.4,
                  child: Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
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
                  description,
                  style: TextStyle(color: Colors.black45, fontSize: 12),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                Text(
                  "₹" + price.toString(),
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 141, 7),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  offer.toString() + "% OFF",
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
