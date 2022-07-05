import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/views/business/product/product_upload_screen.dart';

class DefaultProductCard extends StatelessWidget {
  const DefaultProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => UploadJewelryScreen(
            editing: true,
          )),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.33,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(Colors.black26, BlendMode.darken),
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1535556116002-6281ff3e9f36?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGpld2Vscnl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'))),
          margin: EdgeInsets.all(4),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: SvgPicture.asset("assets/3.svg"),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Product name',
                            style:
                                TextStyle(fontSize: 13, color: Colors.white)),
                        Text("£3423",
                            style: TextStyle(fontSize: 13, color: Colors.white))
                      ],
                    ),
                    Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white,
                      size: 28,
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
