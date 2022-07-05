import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/views/business/welcome/welcome_business_screen.dart';

class GetInTouchScreen extends StatefulWidget {
  const GetInTouchScreen({Key? key}) : super(key: key);

  @override
  _GetInTouchScreenState createState() => _GetInTouchScreenState();
}

class _GetInTouchScreenState extends State<GetInTouchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      bottomNavigationBar: DefaultButton(
          title: 'Continue',
          press: () => Get.to(() => WelcomeBusinessScreen())),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Text('Get in touch',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Tell us where we can contact each other.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black38)),
            ),
            SizedBox(
              height: 40,
            ),
            Form(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Contact person name *'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Contact person phone number *'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Business Phone number '),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Business Email *'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Business website',
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
