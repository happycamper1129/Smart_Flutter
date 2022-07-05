import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:jewelery_marketplace/config/constants.dart';
import 'package:flutter/material.dart';

class UserServices {
  Future<String> addUserInfo(Map<String, dynamic> userInfo) async {
    try {
      await userRefCollection.doc(auth.currentUser?.uid).update(userInfo);
      return 'success';
    } catch (e) {
      return 'error';
    }
  }

  //for showing dialogs bases on OS, re - use it wherever you want to show alert dialog
  void showDynamicDialog(BuildContext context, String text) {
    showDialog(
        context: context,
        builder: (context) {
          return Platform.isIOS
              ? CupertinoAlertDialog(
                  actions: [
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'))
                  ],
                  title: Text(text),
                )
              : AlertDialog(
                  actions: [
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'))
                  ],
                  title: Text(text),
                );
        });
  }

  void showLoaderDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            children: [
              Center(
                child: Column(
                  children: [
                    CupertinoActivityIndicator(
                      animating: true,
                    ),
                    Text('Please wait...')
                  ],
                ),
              )
            ],
          );
        });
  }
}
