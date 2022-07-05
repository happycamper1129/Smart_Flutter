import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/config/styles.dart';

class WelcomeUserScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Tradefair, Tiffany',
              style: kBasicStyle.copyWith(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25, top: 15, bottom: 20),
              child: Text(
                'Now you can discover your favorite store and products.',
                style: kInputHintStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15, top: 15, bottom: 20),
              child: DefaultButton(
                title: 'Complete',
                press: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/', (Route<dynamic> route) => false);
                },
              ),
            ),
          ],
        ),
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
                    color: Colors.black38)),
          ),
        ),
      ],
    ));
  }

  Widget button(String text) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.black38.withOpacity(0.2), width: 1),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
        child: Center(
          child: Text(
            text,
            style: kInputStyle.copyWith(
                color: Colors.white, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
