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
    apiKey: 'AIzaSyCOnmDr-T5gH3P3ue0lpq1ndE_BYntYVQs',
    appId: '1:236308905888:web:4ca9131f0443d19511eec5',
    messagingSenderId: '236308905888',
    projectId: 'booking-a921b',
    authDomain: 'booking-a921b.firebaseapp.com',
    storageBucket: 'booking-a921b.appspot.com',
    measurementId: 'G-6833EF1GSC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDXqIG2S3nc7SCuS2FeGmSKEc_zUjTiBYc',
    appId: '1:236308905888:android:b39adaca69e6658011eec5',
    messagingSenderId: '236308905888',
    projectId: 'booking-a921b',
    storageBucket: 'booking-a921b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBVSxThoBnb4eMCX5z3q8dg7YK5KLmD6uA',
    appId: '1:236308905888:ios:7f137c75b1dca4c411eec5',
    messagingSenderId: '236308905888',
    projectId: 'booking-a921b',
    storageBucket: 'booking-a921b.appspot.com',
    iosClientId: '236308905888-7u4pdu5c6e7usnom4hl0or4rabgbn6h6.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBVSxThoBnb4eMCX5z3q8dg7YK5KLmD6uA',
    appId: '1:236308905888:ios:7f137c75b1dca4c411eec5',
    messagingSenderId: '236308905888',
    projectId: 'booking-a921b',
    storageBucket: 'booking-a921b.appspot.com',
    iosClientId: '236308905888-7u4pdu5c6e7usnom4hl0or4rabgbn6h6.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication2',
  );
}
