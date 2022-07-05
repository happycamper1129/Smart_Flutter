import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jewelery_marketplace/config/constants.dart';

class AuthServices {
//signup with email and password
  Future<String> signUpUser(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCreds = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      // String deviceToken = await FirebaseMessaging.instance.getToken();
      User? user = userCreds.user;
      assert(await user?.getIdToken() != null);
     // user?.sendEmailVerification();
      String? deviceToken = await FirebaseMessaging.instance.getToken();
      userRefCollection.doc(user!.uid).collection('tokens').doc(deviceToken).set({
        'deviceToken': deviceToken,
      });

      assert(await user.getIdToken() != null);

      //.then((value) async => {
      //       await currentUser.updateProfile(displayName: name),
      //       print('User added'),
      //       userCollectionRef
      //           .doc(user.uid)
      //           .collection('tokens')
      //           .doc(deviceToken)
      //           .set({
      //         'token': deviceToken,
      //         'platform': Platform.isAndroid ? 'Android' : 'iOS'
      //       })
      //     });

      return 'success';
    } catch (e) {
      if (e.toString() ==
          '[firebase_auth/email-already-in-use] The email address is already in use by another account.') {
        return 'The email address is already in use by another account.';
      }
      if (e.toString() ==
          '[firebase_auth/weak-password] Password should be at least 6 characters') {
        return 'Password should be at least 6 characters';
      }
      return e.toString();
    }
  }

//sign with email and password
  Future<String> signInUser(String email, String password) async {
    // FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
    try {
      UserCredential userCreds = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      String? deviceToken = await FirebaseMessaging.instance.getToken();
      User? user = userCreds.user;
      assert(await user?.getIdToken() != null);

      userRefCollection.doc(user!.uid).collection('tokens').doc(deviceToken).set({
        'deviceToken': deviceToken,
      });

      return 'success';
    } catch (e) {

      print(e.toString());

      if (e.toString() ==
          '[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.') {
        return 'Email address not found';
      } else if (e.toString() ==
          '[firebase_auth/wrong-password] The password is invalid or the user does not have a password.') {
        return 'Invalid password';
      } else {
        return e.toString();
      }
    }
  }


  ///sign in with google
  /////google authentication
  Future<Map> signInWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential authResult =
          await auth.signInWithCredential(credential);
      final User? user = authResult.user;

      final String? deviceToken = await FirebaseMessaging.instance.getToken();
      userRefCollection.doc(user!.uid).collection('tokens').doc(deviceToken).set({
        'deviceToken': deviceToken,
      });


      // assert(!user!.isAnonymous);
      assert(await user.getIdToken() != null);
      //   String deviceToken = await FirebaseMessaging.instance.getToken();

      DocumentSnapshot userDetailsDocument =
          await userRefCollection.doc(user.uid).get();

      if (userDetailsDocument.data() != null) {
        return {'resp': 'Already present'};
      } else {
        userRefCollection.doc(user.uid).set({
          'firstName': user.displayName?.split(' ')[0],
          'lastName': user.displayName?.split(' ')[1],
          'email': user.email,
          'uid': user.uid,
          'profileImageUrl': user.photoURL
        });

        return {'resp': 'success'};
      }
    } catch (e) {
      print('Error $e');
      return {'resp': 'error'};
    }

    // HttpsCallableResult resp = await callableCreateAccount
    //     .call({'email': user.email, 'name': user.displayName});
  }



}
