import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/components/outline_button.dart';
import 'package:jewelery_marketplace/config/colors.dart';
import 'package:jewelery_marketplace/config/constants.dart';
import 'package:jewelery_marketplace/models/user.dart';
import 'package:jewelery_marketplace/services/api_service.dart';
import 'package:jewelery_marketplace/views/business/profile/business_contact_screen.dart';
import 'package:jewelery_marketplace/views/business/profile/edit_policy_screen.dart';

class BusinessEditProfileScreen extends StatefulWidget {
  const BusinessEditProfileScreen({Key? key}) : super(key: key);

  @override
  _BusinessEditProfileScreenState createState() =>
      _BusinessEditProfileScreenState();
}

class _BusinessEditProfileScreenState extends State<BusinessEditProfileScreen> {
  APIService service = APIService(Dio());
  final _formKey = GlobalKey<FormState>();
  TextEditingController busnessNameController = TextEditingController();
  TextEditingController contactPersonPhoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  late String profileImageUrl;
  late String coverImageUrl;

  bool profile = false;
  bool cover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Edit store info'),
        actions: [
          GestureDetector(
            onTap: () async{
            if (_formKey.currentState!.validate()) {
              var params = {
                'description': '',
                'userId': countryController.text,
                'profileImageUrl': profileImageUrl.toString(),
                'coverImageUrl': coverImageUrl.toString(),
                'contactPersonName': busnessNameController.text,
                'contactPersonPhoneNumber': contactPersonPhoneController.text,
                'country': countryController.text,
                'timezone': ''
              };
              User map = await service.updateUserInfo(params);
            }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 12),
              child: Text(
                'Save',
                style: TextStyle(
                    color: kColorPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2 + 50,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () async{
                      coverImageUrl = await productController.uploadProfileImage(context , 'cover_image');
                      setState(() {
                        cover = true;
                        coverImageUrl = coverImageUrl;
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          image: cover ? DecorationImage(
                            //colorFilter: ColorFilter.mode(
                            //Colors.black38, BlendMode.darken),
                              fit: BoxFit.cover,
                              image: NetworkImage(coverImageUrl,
                              )):DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black38, BlendMode.darken),
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/start.png',
                              ))),
                      child: IconButton(
                          onPressed: () async{
                              coverImageUrl = await productController.uploadProfileImage(context , 'cover_image');
                              setState(() {
                                cover = true;
                              });
                          },
                          icon: Icon(
                            Icons.add_a_photo,
                            color: lightBtn,
                            size: 50,
                          )),
                    ),
                  ),
                  Positioned(
                      left: 25,
                      top: MediaQuery.of(context).size.height * 0.2 - 50,
                      child: GestureDetector(
                        onTap: () async{
                          profileImageUrl = await productController.uploadProfileImage(context , 'profile_image');
                          setState(() {
                            profile = true;
                            profileImageUrl = profileImageUrl;
                          });
                        },
                        child:  profile ? CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(profileImageUrl),
                        ) : CircleAvatar(
                          backgroundColor: Color(0xFF29AB87),
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                          radius: 50,
                          child: Icon(
                            Icons.add_a_photo,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Name of business is required';
                      }
                      return null;
                    },
                    controller: busnessNameController,
                    decoration: InputDecoration(
                        helperText: ' ',
                        labelText: 'Name of business',
                    ),
                  ),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'contactPersonPhoneName is required';
                      }
                      return null;
                    },
                    controller: contactPersonPhoneController,
                    decoration: InputDecoration(
                      helperText: ' ',
                      labelText: 'contactPersonPhoneName',
                    ),
                  ),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'email is required';
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      helperText: ' ',
                      labelText: 'email',
                    ),
                  ),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Country is required';
                      }
                      return null;
                    },
                    controller: countryController,
                    decoration: InputDecoration(
                      helperText: ' ',
                      labelText: 'Country',
                    ),
                  ),
                  // TextFormField(
                  //   decoration:
                  //       InputDecoration(labelText: 'Nature of business'),
                  // ),
                  // TextFormField(
                  //   decoration:
                  //       InputDecoration(labelText: 'Number of employee'),
                  // ),
                  // TextFormField(
                  //   decoration: InputDecoration(labelText: 'Established since'),
                  // ),
                ],
              )),
            ),
            OutlineButton1(
                title: 'Edit store contact',
                press: () {
                  Get.to(() => BusinessContactScreen());
                }),
            SizedBox(
              height: 15,
            ),
            OutlineButton1(
                title: 'Edit store policy',
                press: () {
                  Get.to(() => BusinessEditPolicyScreen());
                })
          ],
        ),
      ),
    );
  }
}
