import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/components/default_second_title.dart';
import 'package:jewelery_marketplace/components/defualt_headertext.dart';
import 'package:jewelery_marketplace/views/business/store/notification_screen.dart';

class WaitingBusinessScreen extends StatelessWidget {
  const WaitingBusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: DefaultButton(
            title: 'Next',
            press: () {
              Get.to(() => NotificationScreen());
            }),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultHeaderTitle(title: "We'll get back to you"),
          Image.asset('assets/webfly.png'),
          DefaultSecondTitle(
              title:
                  "We're still processing your store. Once it's done, you'll be notified"),
        ],
      ),
    );
  }
}
