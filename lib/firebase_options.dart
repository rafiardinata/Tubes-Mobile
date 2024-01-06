// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCtZkpQidPLn_XfJS0S9SEsgGT44Mz_Uwc',
    appId: '1:346190268273:web:f1e65a4608d94ab92598d0',
    messagingSenderId: '346190268273',
    projectId: 'ecommerceapp-e6555',
    authDomain: 'ecommerceapp-e6555.firebaseapp.com',
    storageBucket: 'ecommerceapp-e6555.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD5U5W_WIw8d3YYq1bl_eDAnHO7i49CCK4',
    appId: '1:346190268273:android:540163f975b0f53a2598d0',
    messagingSenderId: '346190268273',
    projectId: 'ecommerceapp-e6555',
    storageBucket: 'ecommerceapp-e6555.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcZKjLeNB5cNSvs2pM6diwcVZgYyzi3CI',
    appId: '1:346190268273:ios:2f3731458a0a979b2598d0',
    messagingSenderId: '346190268273',
    projectId: 'ecommerceapp-e6555',
    storageBucket: 'ecommerceapp-e6555.appspot.com',
    androidClientId: '346190268273-ta5o3scjoh8cpebfnf9pgsacq3itpun1.apps.googleusercontent.com',
    iosClientId: '346190268273-j70huh452dbt9inbc5dr3hgqndh4d0hp.apps.googleusercontent.com',
    iosBundleId: 'com.example.tubesMobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBcZKjLeNB5cNSvs2pM6diwcVZgYyzi3CI',
    appId: '1:346190268273:ios:33d7d8fdbf1c23ae2598d0',
    messagingSenderId: '346190268273',
    projectId: 'ecommerceapp-e6555',
    storageBucket: 'ecommerceapp-e6555.appspot.com',
    androidClientId: '346190268273-ta5o3scjoh8cpebfnf9pgsacq3itpun1.apps.googleusercontent.com',
    iosClientId: '346190268273-tnflkcq03v4vot6d3e9bodruoj1ko82j.apps.googleusercontent.com',
    iosBundleId: 'com.example.tubesMobile.RunnerTests',
  );
}
