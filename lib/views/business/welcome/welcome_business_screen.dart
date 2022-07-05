import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/components/default_second_title.dart';
import 'package:jewelery_marketplace/components/defualt_headertext.dart';
import 'package:jewelery_marketplace/views/business/store/plicies_screen.dart';
import 'package:jewelery_marketplace/views/business/welcome/waiting_business_screen.dart';

class WelcomeBusinessScreen extends StatelessWidget {
  const WelcomeBusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  'By continuing you indicate to read and agree to the terms of the service .',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black38)),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            DefaultHeaderTitle(
              title: 'Welcome to Traidfair, Tiffany & Co',
            ),
            DefaultSecondTitle(
                title:
                    'We will process your store now. Once it\'s done you\'ll be notified. '),
            DefaultButton(
                title: 'Complete',
                press: () {
                  Get.to(() => PoliciesScreen());

                  Get.to(() => WaitingBusinessScreen());
                })
          ]),
        ],
      ),
    );
  }
}
