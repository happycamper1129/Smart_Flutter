import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/components/loader_dialog.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/constants.dart';
import 'package:jewelery_marketplace/config/styles.dart';
import 'package:jewelery_marketplace/views/business/auth/email_confirmation_screen.dart';
import 'package:jewelery_marketplace/views/business/store/store_form_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  String email = '';
  String password = '';
  String confirmPassword = '';
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 2.5),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text("English (United Statees)",
              //           style: TextStyle(color: Colors.black)),
              //       Icon(
              //         Icons.keyboard_arrow_down_outlined,
              //       ),
              //     ],
              //   ),
              // ),
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Trade Fair',
                          style: GoogleFonts.mulish(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w800,
                            color: kDarkBlack,
                          ),
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 20),
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                textAlignVertical: TextAlignVertical.center,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Email is required';
                                  }
                                  if (val.contains(' ') ||
                                      !emailValidatorRegExp.hasMatch(val)) {
                                    return 'Email is not valid';
                                  }
                                  return null;
                                },
                                onSaved: (val) {},
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                enableInteractiveSelection: true,
                                style: kInputStyle,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.emailAddress,
                                inputFormatters: [
                                  // WhitelistingTextInputFormatter(
                                  //     RegExp("[a-z]")),
                                  // LengthLimitingTextInputFormatter(14),
                                  // BlacklistingTextInputFormatter(RegExp(
                                  //     '(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])'))
                                ],
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 14),
                                  helperStyle: kInputHintStyle,
                                  errorStyle: GoogleFonts.mulish(
                                    color: Colors.red,
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  hintStyle: kInputHintStyle,
                                  labelText: 'Email',
                                  labelStyle: kInputHintStyle,
                                  fillColor: Color(0xFFEFEFEF),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                        color: Colors.black87, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                        color: Colors.black87, width: 1),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 20),
                              child: TextFormField(
                                controller: _password,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                obscureText: !passwordVisible,
                                textAlignVertical: TextAlignVertical.center,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Password is required';
                                  }
                                  return null;
                                },
                                onSaved: (val) {},
                                onChanged: (value) {
                                  setState(() {
                                    password = value;
                                  });
                                },
                                enableInteractiveSelection: true,
                                style: kInputStyle,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.text,
                                inputFormatters: [
                                  WhitelistingTextInputFormatter(
                                      RegExp(r'[a-zA-Z0-9]'))
                                ],
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 14),
                                  helperStyle: kInputHintStyle,
                                  errorStyle: GoogleFonts.mulish(
                                    color: Colors.red,
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          passwordVisible = !passwordVisible;
                                        });
                                      },
                                      icon: passwordVisible
                                          ? Icon(Icons.visibility_rounded)
                                          : Icon(Icons.visibility_off)),
                                  hintStyle: kInputHintStyle,
                                  labelText: 'Password',
                                  labelStyle: kInputHintStyle,
                                  fillColor: Color(0xFFEFEFEF),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                        color: Colors.black87, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                        color: Colors.black87, width: 1),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 20),
                              child: TextFormField(
                                controller: _confirmPassword,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                obscureText: !passwordVisible,
                                textAlignVertical: TextAlignVertical.center,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Confirm Password is required';
                                  }
                                  if (val != password) {
                                    return 'Password does not match';
                                  }
                                  return null;
                                },
                                onSaved: (val) {},
                                onChanged: (value) {
                                  _confirmPassword
                                      .toString()
                                      .replaceAll(' ', '');
                                  setState(() {
                                    confirmPassword = value;
                                  });
                                },
                                enableInteractiveSelection: true,
                                style: kInputStyle,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.text,
                                inputFormatters: [
                                  WhitelistingTextInputFormatter(
                                      RegExp(r'[a-zA-Z0-9]'))
                                ],
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 14),
                                  helperStyle: kInputHintStyle,
                                  errorStyle: GoogleFonts.mulish(
                                    color: Colors.red,
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          passwordVisible = !passwordVisible;
                                        });
                                      },
                                      icon: passwordVisible
                                          ? Icon(Icons.visibility_rounded)
                                          : Icon(Icons.visibility_off)),
                                  hintStyle: kInputHintStyle,
                                  labelText: 'Confirm Password',
                                  labelStyle: kInputHintStyle,
                                  fillColor: Color(0xFFEFEFEF),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                        color: Colors.black87, width: 1),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                        color: Colors.black87, width: 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      DefaultButton(
                          title: 'Register',
                          press: () async {
                            if (_formKey.currentState!.validate()) {
                              print('Validate');
                              _formKey.currentState?.save();
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
                              String resp = await authServices.signUpUser(
                                  email, password);
                              print(resp);
                              if (resp != 'success') {
                                Navigator.of(context).pop();
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text(resp),
                                        actions: [
                                          FlatButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('OK'))
                                        ],
                                      );
                                    });
                              } else {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/', (Route<dynamic> route) => false);
                              }
                            } else {
                              //
                            }
                          }),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       'Forgot your Sign Up details? ',
                      //       style: GoogleFonts.mulish(
                      //         color: kDarkBlack,
                      //         fontSize: 14.0,
                      //         fontWeight: FontWeight.w400,
                      //       ),
                      //     ),
                      //     Text(
                      //       'Get help.',
                      //       style: TextStyle(color: kColorPrimary),
                      //     )
                      //   ],
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 30, bottom: 10),
                        child: Row(children: <Widget>[
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            color: kDarkBlack,
                          )),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 5),
                            child: Text(
                              "OR",
                              style: GoogleFonts.mulish(
                                color: kDarkBlack,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            color: kDarkBlack,
                          )),
                        ]),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 10, bottom: 10),
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                height: 50,
                                onPressed: () async {
                                  userServices.showLoaderDialog(context);
                                  Map resp =
                                      await authServices.signInWithGoogle();
                                  if (resp['resp'] == 'error') {
                                    Navigator.of(context).pop();
                                    userServices.showDynamicDialog(
                                        context, 'Login failed');
                                  } else if (resp['resp'] ==
                                      'Already present') {
                                    Navigator.of(context)
                                        .pushNamedAndRemoveUntil('/',
                                            (Route<dynamic> route) => false);
                                  } else {
                                    Navigator.of(context)
                                        .pushNamedAndRemoveUntil('/',
                                            (Route<dynamic> route) => false);
                                  }
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 4),
                                color: kColorPrimary,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Center(
                                        child: Image.network(
                                          'https://static.wixstatic.com/media/ad4dc4_1f841c4b13c6487e930105191bd6c77c~mv2.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 28.0),
                                      child: Text(
                                        'Sign Up With Google',
                                        style: GoogleFonts.mulish(
                                          color: kDarkWhite,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 10, bottom: 10),
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                height: 50,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 12),
                                color: Colors.black,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      'https://static.wixstatic.com/media/ad4dc4_45f82c86818f47298ac3a98c05d1db9a~mv2.png',
                                      height: 20,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 38.0),
                                      child: Text(
                                        'Sign Up With Apple',
                                        style: GoogleFonts.mulish(
                                          color: kDarkWhite,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 10, bottom: 10),
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                height: 50,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 12),
                                color: kColorPrimary,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      'https://static.wixstatic.com/media/ad4dc4_0b77334cd9314cb8b5c3e5bdca694e1a~mv2.png',
                                      height: 20,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 38.0),
                                      child: Text(
                                        'Sign Up With Facebook',
                                        style: GoogleFonts.mulish(
                                          color: kDarkWhite,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Divider(
                      color: Colors.black45,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?  ",
                            textAlign: TextAlign.center,
                          ),
                          GestureDetector(
                            onTap: () {
                              //
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: kColorPrimary),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  WhitelistingTextInputFormatter(RegExp regExp) {}
}
