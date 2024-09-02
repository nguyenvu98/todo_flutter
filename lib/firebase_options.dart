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
    apiKey: 'AIzaSyA5vuaERP2xb2Ew3qNHolyQH1jXT_v1Mvs',
    appId: '1:556232716148:web:3ea5e2f72f1ba57a398621',
    messagingSenderId: '556232716148',
    projectId: 'flutter-todo-39258',
    authDomain: 'flutter-todo-39258.firebaseapp.com',
    storageBucket: 'flutter-todo-39258.appspot.com',
    measurementId: 'G-FS67LX74ZJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCy_fMRi4lH7xloc8d8-2j0Jh-TlQlmuxM',
    appId: '1:556232716148:android:f7508f2d45268a19398621',
    messagingSenderId: '556232716148',
    projectId: 'flutter-todo-39258',
    storageBucket: 'flutter-todo-39258.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWyxKi7qopcqb0t7854VsvItNRKW7laJY',
    appId: '1:556232716148:ios:c9f8b408a9c3929d398621',
    messagingSenderId: '556232716148',
    projectId: 'flutter-todo-39258',
    storageBucket: 'flutter-todo-39258.appspot.com',
    iosBundleId: 'com.example.todoAppFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWyxKi7qopcqb0t7854VsvItNRKW7laJY',
    appId: '1:556232716148:ios:c9f8b408a9c3929d398621',
    messagingSenderId: '556232716148',
    projectId: 'flutter-todo-39258',
    storageBucket: 'flutter-todo-39258.appspot.com',
    iosBundleId: 'com.example.todoAppFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA5vuaERP2xb2Ew3qNHolyQH1jXT_v1Mvs',
    appId: '1:556232716148:web:e481f39216868e91398621',
    messagingSenderId: '556232716148',
    projectId: 'flutter-todo-39258',
    authDomain: 'flutter-todo-39258.firebaseapp.com',
    storageBucket: 'flutter-todo-39258.appspot.com',
    measurementId: 'G-8EMEDM62TR',
  );
}
