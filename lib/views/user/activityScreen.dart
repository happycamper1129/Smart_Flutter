import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/styles.dart';

class ActivityScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back,
          color: kDarkBlack,
        ),
        centerTitle: false,
        title: Text(
          'Notifications',
          style: kBigBasicStyle,
        ),
      ),
      // bottomSheet: ,
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25,
                ),
                title: Text(
                  'Congratulations !',
                  style: kBigBasicStyle.copyWith(fontSize: 16),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'We\'ve approved your store. You can set it up now!',
                    style: kInputHintStyle,
                  ),
                ),
                trailing: button('Set Up Store'),
              ),
            );
          }),
    );
  }

  Widget button(String text) {
    return Padding(
      padding: EdgeInsets.only(
        right: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: 40,
          width: 95,
          decoration: BoxDecoration(
              color: Colors.blue,
              border:
                  Border.all(color: Colors.black38.withOpacity(0.2), width: 1),
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
      ),
    );
  }
}
