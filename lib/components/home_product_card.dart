import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/views/business/product/product_details_screen.dart';

class HomeProductCard extends StatelessWidget {
  const HomeProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailsScreen()),
      child: Stack(
        children: [
          Image.asset(
            'assets/diamond.png',
            fit: BoxFit.cover,
          ),
          Positioned(
              top: 4,
              left: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.shade100,
                ),
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      child: Icon(Icons.store, size: 14),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Company',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              )),
          Positioned(
              bottom: 5,
              left: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product name',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  Text(
                    "£" + '5645',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
