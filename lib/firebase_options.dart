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
    apiKey: 'AIzaSyD-EBqfkxvSHvTLumQFlysuWzc6t2oToJ4',
    appId: '1:782333401605:web:3dde1b73e607cd20ae1a6c',
    messagingSenderId: '782333401605',
    projectId: 'flutter-fcm-notification-9e02a',
    authDomain: 'flutter-fcm-notification-9e02a.firebaseapp.com',
    storageBucket: 'flutter-fcm-notification-9e02a.appspot.com',
    measurementId: 'G-WN2JXWZHF2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjanRY-4PLZZ2NLLFvctv1A6zmAtmVcxo',
    appId: '1:782333401605:android:1c33fc26db288de1ae1a6c',
    messagingSenderId: '782333401605',
    projectId: 'flutter-fcm-notification-9e02a',
    storageBucket: 'flutter-fcm-notification-9e02a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJ6nC8A94k9PHyx2-2PkqNP2QIcHdgsSU',
    appId: '1:782333401605:ios:2731480cedf09a5cae1a6c',
    messagingSenderId: '782333401605',
    projectId: 'flutter-fcm-notification-9e02a',
    storageBucket: 'flutter-fcm-notification-9e02a.appspot.com',
    iosClientId: '782333401605-k8nnfmbblbgmrupmaj9a2l2h60q75fk3.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFcmNotifications',
  );
}
