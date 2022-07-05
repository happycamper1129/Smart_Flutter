import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewelery_marketplace/components/default_button.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/constants.dart';
import 'package:jewelery_marketplace/config/styles.dart';
import 'package:sticky_headers/sticky_headers.dart';

class GetStartedScreen extends StatefulWidget {
  GetStartedScreen(this.firstName, this.lastName, this.jobTitle, this.aboutMe,
      this.accountType);
  final String firstName;
  final String lastName;
  final String jobTitle;
  final String aboutMe;
  final String accountType;

  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  TextEditingController emailController =
      TextEditingController(text: auth.currentUser?.email);
  final _formKey = GlobalKey<FormState>();

  String company = '';
  String industry = '';
  String city = '';
  String country = '';
  String businessWebsite = '';

  void initState() {
    print(widget.firstName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: false,
          title: Text(
            'Sign Up',
          ),
        ),
        // bottomSheet: ,
        body: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              'Let\'s get Started',
              style: kBasicStyle.copyWith(fontSize: 40),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
              child: Text(
                'Tell us more about yourself, so we can get to know each other better.',
                style: kInputHintStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 28.0, right: 28, bottom: 20),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {
                        setState(() {
                          company = value;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Company is required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: new UnderlineInputBorder(
                            borderSide: new BorderSide()),
                        labelText: 'Company*',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 28.0, right: 28, bottom: 20),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          industry = value;
                        });
                      },
                      // validator: (val) {
                      //   if (val!.isEmpty) {
                      //     return 'Industry is required';
                      //   }
                      //   return null;
                      // },
                      decoration: InputDecoration(
                        border: new UnderlineInputBorder(
                            borderSide: new BorderSide()),
                        labelText: 'Industry',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 28.0, right: 28, bottom: 20),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {
                        setState(() {
                          city = value;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'City is required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: new UnderlineInputBorder(
                            borderSide: new BorderSide()),
                        labelText: 'City*',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 28.0, right: 28, bottom: 20),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {
                        setState(() {
                          country = value;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Country is required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: new UnderlineInputBorder(
                            borderSide: new BorderSide()),
                        labelText: 'Country*',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 28.0, right: 28, bottom: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: new UnderlineInputBorder(
                            borderSide: new BorderSide()),
                        labelText: 'Business Website',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 28.0, right: 28, bottom: 20),
                    child: TextFormField(
                      enabled: false,
                      controller: emailController,
                      decoration: InputDecoration(
                        border: new UnderlineInputBorder(
                            borderSide: new BorderSide()),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: DefaultButton(
                    title: 'Done',
                    press: () async {
                      if (_formKey.currentState!.validate()) {
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
                                        Text('Saving profile...')
                                      ],
                                    ),
                                  )
                                ],
                              );
                            });
                        String resp = await userServices.addUserInfo({
                          'firstName': widget.firstName,
                          'lastName': widget.lastName,
                          'jobTitle': widget.jobTitle,
                          'aboutMe': widget.aboutMe,
                          'company': company,
                          'industry': industry,
                          'city': city,
                          'country': country,
                          'businessWebsite': businessWebsite,
                          'accountType': widget.accountType
                        });
                        if (resp == 'success') {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/welcome_user', (Route<dynamic> route) => false);
                        } else {
                          Navigator.of(context).pop();
                          showDialog(
                              context: context,
                              builder: (context) {
                                return SimpleDialog(
                                  children: [
                                    Center(
                                      child: Column(
                                        children: [
                                          Text(
                                              'Failed to save profile information')
                                        ],
                                      ),
                                    )
                                  ],
                                );
                              });
                        }
                      }
                    },
                  ),
                )
              ],
            )
          ],
        ));
  }

  Widget button(String text) {
    return Padding(
      padding: EdgeInsets.only(right: 10, left: 10, top: 80),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: 45,
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
