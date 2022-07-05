import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/components/default_second_title.dart';
import 'package:jewelery_marketplace/components/defualt_headertext.dart';
import 'package:jewelery_marketplace/views/business/welcome/all_setup_screen.dart';

class PoliciesScreen extends StatefulWidget {
  const PoliciesScreen({Key? key}) : super(key: key);

  @override
  _PoliciesScreenState createState() => _PoliciesScreenState();
}

class _PoliciesScreenState extends State<PoliciesScreen> {
  TextEditingController storPolicy = TextEditingController();
  TextEditingController shippingPolicy = TextEditingController();
  TextEditingController returnPolicy = TextEditingController();
  TextEditingController faq = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store Set up'),
      ),
      bottomNavigationBar: DefaultButton(
          title: 'Done',
          press: () {
            Get.to(() => AllSetupScreen());
          }),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: DefaultHeaderTitle(title: 'Policies')),
            DefaultSecondTitle(
                title: 'Upload the documents containg your stor\'s policies'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              child: Text('Store Policy'),
            ),
            TextFormField(
              controller: storPolicy,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              child: Text('Shipping Policy'),
            ),
            TextFormField(
              controller: shippingPolicy,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              child: Text('Return Policy'),
            ),
            TextFormField(
              controller: returnPolicy,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              child: Text('FAQ'),
            ),
            TextFormField(
              controller: faq,
            ),
          ],
        ),
      ),
    );
  }
}
