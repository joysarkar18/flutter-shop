import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: Get.width * 0.98,
      child: Card(
        child: Row(children: [
          SizedBox(
            height: 170,
            width: Get.width * 0.4,
            child: Image.network(
                "https://m.media-amazon.com/images/I/51NCvhdxkOL._SL1200_.jpg"),
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
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Samsung Glaxy S22 ultra",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Best phone of the year",
                    style: TextStyle(color: Colors.black45, fontSize: 12),
                  ),
                  Text(
                    "₹" + "87756",
                    style: TextStyle(
                        color: Color.fromARGB(255, 2, 141, 7),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
