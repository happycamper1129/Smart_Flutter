import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jewelery_marketplace/config/themes.dart';
import 'package:jewelery_marketplace/router.dart';
import 'package:jewelery_marketplace/views/business/auth/signin_screen.dart';
import 'package:jewelery_marketplace/views/business/profile/store_edit_screen.dart';
import 'package:jewelery_marketplace/views/business/store/store_setup_screen.dart';

import 'config/constants.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jewelry Marketplace',
      theme: lightTheme,
      //home: BusinessEditProfileScreen(),
       initialRoute: auth.currentUser == null ? '/sign_in' : '/',
      onGenerateRoute: Routerr.generateRoute,
    );
  }
}
