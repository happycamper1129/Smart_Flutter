//email validator
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/controllers/product_controller.dart';
import 'package:jewelery_marketplace/services/auth_services.dart';
import 'package:jewelery_marketplace/services/user_services.dart';
import 'package:http/http.dart' as http;

final api = Uri.parse('https://trade-fair-app.uc.r.appspot.com');

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$");

//firebase constants
final userRefCollection = FirebaseFirestore.instance.collection('users');
final auth = FirebaseAuth.instance;

//services
UserServices userServices = UserServices();
AuthServices authServices = AuthServices();

ProductController productController = ProductController();


showSimpleLoader(BuildContext context) {
    showDialog(
        barrierColor: Colors.transparent,
        barrierDismissible: false,
        context: context,
        builder: (context) {
            return CupertinoActivityIndicator(
                radius: 20,
                animating: true,
            );
        });
}
