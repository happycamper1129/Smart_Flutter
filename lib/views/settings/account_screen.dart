import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/views/settings/account_information_screen.dart';
import 'package:jewelery_marketplace/views/settings/change_password_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  createDialogue(BuildContext context) {
    Dialog errorDialog = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        height: 250.0,
        width: 300.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                'Deactivate your account?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'All of your post and products will be removed from our platform.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Deactivate',
                  style: TextStyle(color: Colors.red, fontSize: 18.0),
                )),
            Divider(
              color: Colors.black54,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.black87, fontSize: 18.0),
                ))
          ],
        ),
      ),
    );

    return errorDialog;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Get.to(() => AccountInformationScreen()),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Account Information',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(() => ReseatPasswordScreen()),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Password',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Edit profile ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Request Verification',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Contacts syncing',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => createDialogue(context));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Deactivate account',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
