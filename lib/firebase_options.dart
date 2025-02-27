// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDsSqPpL93s-00IglGeUdxXJcqIrjUTOic',
    appId: '1:989794915632:web:cd1e8d4bf4c694bd1124f5',
    messagingSenderId: '989794915632',
    projectId: 'meal-recip',
    authDomain: 'meal-recip.firebaseapp.com',
    storageBucket: 'meal-recip.appspot.com',
    measurementId: 'G-BPK2SY7E5S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSQyJVDuqtCZ_XrSsMm_UM5qZZ9h4ctec',
    appId: '1:989794915632:android:25329adda43bfe151124f5',
    messagingSenderId: '989794915632',
    projectId: 'meal-recip',
    storageBucket: 'meal-recip.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLya63n94NDHtdTLajhsdVCsVve3qoh3Q',
    appId: '1:989794915632:ios:1d2d56e606f329411124f5',
    messagingSenderId: '989794915632',
    projectId: 'meal-recip',
    storageBucket: 'meal-recip.appspot.com',
    iosBundleId: 'com.example.mealRecipe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDLya63n94NDHtdTLajhsdVCsVve3qoh3Q',
    appId: '1:989794915632:ios:1d2d56e606f329411124f5',
    messagingSenderId: '989794915632',
    projectId: 'meal-recip',
    storageBucket: 'meal-recip.appspot.com',
    iosBundleId: 'com.example.mealRecipe',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDsSqPpL93s-00IglGeUdxXJcqIrjUTOic',
    appId: '1:989794915632:web:76b11ac210abb46e1124f5',
    messagingSenderId: '989794915632',
    projectId: 'meal-recip',
    authDomain: 'meal-recip.firebaseapp.com',
    storageBucket: 'meal-recip.appspot.com',
    measurementId: 'G-G59YCVVS28',
  );
}
