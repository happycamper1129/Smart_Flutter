import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/views/business/store/store_setup_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool active = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: active == true
          ? SetUp()
          : Container(
              //height: 300,
              margin: EdgeInsets.only(top: 20, left: 20, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(radius: 25, backgroundColor: Colors.redAccent),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Waiting for approval',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                            overflow: TextOverflow.clip,
                            maxLines: 2,
                          ),
                        ),
                        Text(
                          'We are still processing your request. You\'ll be notified once it\'s done',
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  )
                ],
              )),
    );
  }
}

// ignore: non_constant_identifier_names
Widget SetUp() {
  return Container(
      margin: EdgeInsets.only(top: 15, left: 20, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 25, backgroundColor: Colors.redAccent),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Congratulations !',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black),
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
                ),
                Text(
                  'We\'ve approved your store. you can set it up now.',
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => StoreSetUpScreen());
            },
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: kColorPrimary,
              ),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Set-up store',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
              )),
            ),
          )
        ],
      ));
}
