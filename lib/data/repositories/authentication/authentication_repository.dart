import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tubes_mobile/features/authentication/screens/login/login.dart';
import 'package:tubes_mobile/features/authentication/screens/onboarding/onboarding.dart';
import 'package:tubes_mobile/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:tubes_mobile/utils/exceptions/firebase_exceptions.dart';
import 'package:tubes_mobile/utils/exceptions/format_exceptions.dart';
import 'package:tubes_mobile/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // Called From main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // Function to Show Relevant Scree
  screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull("isFirstTime", true);

    // Check first time launching the app
    deviceStorage.read("isFirstTime") != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }

  /* ----------------------------- Email & Passwod sing-in -----------------------------*/

  // EmailAuthentication - Sign in
  // EmailAuthentication - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  // ReAuthentication - ReAuthentication User
  // EmailVerification - MAIL VERIFACTION
  // EmailAuthentication - FORGOT PASSWORD

  /* ----------------------------- Email & Passwod sing-in -----------------------------*/

  // GoogleAuthentication - GOOGLE
  // FacebookAuthentication - FACEBOOK

  /* ----------------------------- Email & Passwod sing-in -----------------------------*/

  // logoutUser - Valid for any authentication
  // Delete User - Remove User Auth and Firestore Account
}
