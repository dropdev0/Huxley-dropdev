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
    apiKey: 'AIzaSyDFOM90Hz7JzitO0wokFvILXzBX607WQjY',
    appId: '1:516152485670:web:6dc1bdb0795f69996483e7',
    messagingSenderId: '516152485670',
    projectId: 'huxley-c3864',
    authDomain: 'huxley-c3864.firebaseapp.com',
    storageBucket: 'huxley-c3864.appspot.com',
    measurementId: 'G-PS7VQVNNK3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBGW7GfkqwlRCy2dPAcKmbggqpCiZeSQns',
    appId: '1:516152485670:android:5acd39516549930f6483e7',
    messagingSenderId: '516152485670',
    projectId: 'huxley-c3864',
    storageBucket: 'huxley-c3864.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKvnQ-SDdzTJ2amJ4ouWx12xCnSrrU9Fk',
    appId: '1:516152485670:ios:7a2921f9827c06b56483e7',
    messagingSenderId: '516152485670',
    projectId: 'huxley-c3864',
    storageBucket: 'huxley-c3864.appspot.com',
    iosBundleId: 'xyz.dropdev.huxley',
  );
}
