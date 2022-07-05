import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/views/accounts.dart';
import 'package:jewelery_marketplace/views/business/activity/main_screen.dart';
import 'package:jewelery_marketplace/views/business/auth/email_confirmation_screen.dart';
import 'package:jewelery_marketplace/views/business/auth/get_intouch_screen.dart';
import 'package:jewelery_marketplace/views/business/auth/signin_screen.dart';
import 'package:jewelery_marketplace/views/business/auth/signup_screen.dart';
import 'package:jewelery_marketplace/views/business/product/product_upload_screen.dart';
import 'package:jewelery_marketplace/views/business/profile/edit_policy_screen.dart';
import 'package:jewelery_marketplace/views/business/profile/store_edit_screen.dart';
import 'package:jewelery_marketplace/views/business/search/product_search.dart';
import 'package:jewelery_marketplace/views/user/getStartedScreen.dart';
import 'package:jewelery_marketplace/views/user/userSignUp.dart';
import 'package:jewelery_marketplace/views/user/welcomePage.dart';

class Routerr {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MainScreen());
      case '/sign_in':
        return MaterialPageRoute(builder: (_) => SignInScreen());
      case '/sign_up':
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      // case '/upload_screen':
      //   return MaterialPageRoute(builder: (_) => UploadJewelryScreen());
      case '/email_confirmation':
        return MaterialPageRoute(builder: (_) => EmailConfirmationScreen());
      case '/get_intouch':
        return MaterialPageRoute(builder: (_) => GetInTouchScreen());
      case '/edit_profile':
        return MaterialPageRoute(builder: (_) => BusinessEditProfileScreen());
      case '/welcome_user':
        return MaterialPageRoute(builder: (_) => WelcomeUserScreen());
      case '/product_search':
        return MaterialPageRoute(builder: (_) => ProductsSearch());
      case '/get_started_user':
        final args = settings.arguments as GetStartedScreen;

        return MaterialPageRoute(
            builder: (_) => GetStartedScreen(args.firstName, args.lastName,
                args.jobTitle, args.aboutMe, args.accountType));
      case '/personal_profile_setup_one':
        final args = settings.arguments as UserSignUpScreen;
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => UserSignUpScreen(args.accountType));
      case '/choose_account':
        return MaterialPageRoute(builder: (_) => Accounts());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
