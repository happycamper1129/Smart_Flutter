import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/views/business/auth/signup_screen.dart';
import 'package:jewelery_marketplace/views/user/userSignUp.dart';

class Accounts extends StatelessWidget {
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
      ),
      body: Stack(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
              child: RichText(
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                    text:
                        'Do you want to continue with a personal account or a business account?',
                    style: GoogleFonts.mulish(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      color: kDarkBlack,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => SignUpScreen());
                    },
                    child: Image.asset(
                      'assets/business.png',
                      height: 150,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, '/personal_profile_setup_one',
                            arguments: UserSignUpScreen('Personal'));
                      },
                      child: Image.asset(
                        'assets/pers.png',
                        height: 150,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: RichText(
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                    text: 'Tell me the difference',
                    style: GoogleFonts.mulish(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: kLightBlack,
                        decoration: TextDecoration.underline)),
              ),
            ),
          ]),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(),
                  RichText(
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                        text:
                            'By continuing you indicate that you have read and agreed to the Terms of Service.',
                        style: GoogleFonts.mulish(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: kLightBlack,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
