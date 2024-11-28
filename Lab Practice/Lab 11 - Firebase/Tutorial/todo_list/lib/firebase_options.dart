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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBdGFrge_SKztyUfWgdOWPPTcLKl50tt3s',
    appId: '1:1049693059669:web:058d495a6d039722b332dc',
    messagingSenderId: '1049693059669',
    projectId: 'todolist-24-b51',
    authDomain: 'todolist-24-b51.firebaseapp.com',
    storageBucket: 'todolist-24-b51.firebasestorage.app',
    measurementId: 'G-RPMD5HF2J2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWEYaAGsqfez0P0KroQZouLXEm1_XedPU',
    appId: '1:1049693059669:android:4571205c36f78392b332dc',
    messagingSenderId: '1049693059669',
    projectId: 'todolist-24-b51',
    storageBucket: 'todolist-24-b51.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAgz9VkX_mEREOUyNI7k_P3jIhPdQe34P4',
    appId: '1:1049693059669:ios:c749a275f393a9deb332dc',
    messagingSenderId: '1049693059669',
    projectId: 'todolist-24-b51',
    storageBucket: 'todolist-24-b51.firebasestorage.app',
    iosBundleId: 'com.example.todoList',
  );
}