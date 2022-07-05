import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/components/defualt_headertext.dart';
import 'package:jewelery_marketplace/views/business/product/product_upload_screen.dart';

class AllSetupScreen extends StatelessWidget {
  const AllSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultHeaderTitle(title: 'You are all set'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Let's upload your first product to your brand new store. Also we need permission to access your contact so you  can share your store with them",
              textAlign: TextAlign.center,
              style: TextStyle(height: 1.5, fontSize: 14),
            ),
          ),
          DefaultButton(
              title: 'Upload Product',
              press: () {
                Get.to(() => UploadJewelryScreen(editing: false,));
              })
        ],
      ),
    );
  }
}
