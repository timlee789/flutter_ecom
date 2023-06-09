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
    apiKey: 'AIzaSyBb7tZ5TbdhMMHItS9wb9FwJ0FzmqxMpk8',
    appId: '1:502512832749:web:6e4ac4e9563fc289457ce4',
    messagingSenderId: '502512832749',
    projectId: 'flutter-ecommerce-app-9098b',
    authDomain: 'flutter-ecommerce-app-9098b.firebaseapp.com',
    storageBucket: 'flutter-ecommerce-app-9098b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOAnitxaON2K2R3kPBd3X2ZxwS00XGWaQ',
    appId: '1:502512832749:android:834c234ec989644c457ce4',
    messagingSenderId: '502512832749',
    projectId: 'flutter-ecommerce-app-9098b',
    storageBucket: 'flutter-ecommerce-app-9098b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDwSXqXlLtBCvsOmvxY70TSpjt8irfu5ok',
    appId: '1:502512832749:ios:1af6d273f5a8102b457ce4',
    messagingSenderId: '502512832749',
    projectId: 'flutter-ecommerce-app-9098b',
    storageBucket: 'flutter-ecommerce-app-9098b.appspot.com',
    iosClientId: '502512832749-4crpo6hamhbc5hsivkn2gka8c49cbi1v.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterEcom',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDwSXqXlLtBCvsOmvxY70TSpjt8irfu5ok',
    appId: '1:502512832749:ios:1af6d273f5a8102b457ce4',
    messagingSenderId: '502512832749',
    projectId: 'flutter-ecommerce-app-9098b',
    storageBucket: 'flutter-ecommerce-app-9098b.appspot.com',
    iosClientId: '502512832749-4crpo6hamhbc5hsivkn2gka8c49cbi1v.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterEcom',
  );
}
