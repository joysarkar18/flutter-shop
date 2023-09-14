import 'package:flutter/material.dart';
import 'package:flutter_shop/Controllers/ProductController/productController.dart';
import 'package:get/get.dart';

class CartCard extends StatelessWidget {
  final String name;
  final String description;
  final String imgUrl;
  final int price;
  final int count;
  int index;

  CartCard(
      {super.key,
      required this.name,
      required this.description,
      required this.imgUrl,
      required this.price,
      required this.count,
      required this.index});
  @override
  Widget build(BuildContext context) {
    final productController = Get.put(ProductController());
    return SizedBox(
      height: 170,
      width: Get.width * 0.98,
      child: Card(
        child: Row(children: [
          SizedBox(
            height: 170,
            width: Get.width * 0.4,
            child: Image.network(imgUrl),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
              height: 170,
              width: Get.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    description,
                    style: TextStyle(color: Colors.black45, fontSize: 12),
                  ),
                  Text(
                    "₹" + price.toString(),
                    style: TextStyle(
                        color: Color.fromARGB(255, 2, 141, 7),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  productController.decreamentCount(index);
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 20,
                                )),
                            Text(
                              count.toString(),
                              style: TextStyle(fontSize: 18),
                            ),
                            IconButton(
                                onPressed: () {
                                  productController.increaseCount(index);
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 20,
                                )),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            productController.deleteProductFromCart(index);
                          },
                          icon: Icon(Icons.delete))
                    ],
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
