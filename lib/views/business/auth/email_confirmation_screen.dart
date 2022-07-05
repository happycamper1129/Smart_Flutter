import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/constants.dart';

class EmailConfirmationScreen extends StatefulWidget {

  const EmailConfirmationScreen({Key? key}) : super(key: key);

  @override
  _EmailConfirmationScreenState createState() => _EmailConfirmationScreenState();
}

class _EmailConfirmationScreenState extends State<EmailConfirmationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
            child: Text(
              'Check your email',
              style: GoogleFonts.mulish(
                color: kDarkBlack,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: GestureDetector(
              onTap: () {
                auth.currentUser?.sendEmailVerification();
              },
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text:
                          'Click the confirmation link sent to ${auth.currentUser?.email}',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black54)),
                  TextSpan(
                    text: ' Resend email',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF318BFF),
                        fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/confirm.png',
            ),
          ),
          DefaultButton(
              title: 'Continue',
              press: () async {
                await auth.currentUser?.reload();
                if (auth.currentUser!.emailVerified) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/choose_account', (Route<dynamic> route) => false);
                } else {
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
                                title: Text(
                                    'Please verify your email to continue. Click on Resend Email if you have not recieved the verificaiton email.'),
                              )
                            : AlertDialog(
                                actions: [
                                  FlatButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('OK'))
                                ],
                                title: Text(
                                    'Please verify your email to continue. Click on Resend Email if you have not recieved the verificaiton email.'),
                              );
                      });
                }
              })
        ],
      ),
    );
  }
}
