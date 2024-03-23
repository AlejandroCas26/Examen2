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
    apiKey: 'AIzaSyB1EtlL1MM6XpH4cHSHg49gaHcV9PCL8Bg',
    appId: '1:262423497086:web:b83e533897e1cc79a9cb2f',
    messagingSenderId: '262423497086',
    projectId: 'examen2-ea832',
    authDomain: 'examen2-ea832.firebaseapp.com',
    storageBucket: 'examen2-ea832.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDDZEBLr0prytAJDDMWBvA8Yxi_MB37SBg',
    appId: '1:262423497086:android:8e772a0abb8d4118a9cb2f',
    messagingSenderId: '262423497086',
    projectId: 'examen2-ea832',
    storageBucket: 'examen2-ea832.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4iqX-sSIYAb8RQbyaj6YsClAX7v-NyJA',
    appId: '1:262423497086:ios:ae4f71181a3f9ebfa9cb2f',
    messagingSenderId: '262423497086',
    projectId: 'examen2-ea832',
    storageBucket: 'examen2-ea832.appspot.com',
    iosBundleId: 'com.example.examen2Grupo4',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4iqX-sSIYAb8RQbyaj6YsClAX7v-NyJA',
    appId: '1:262423497086:ios:4ec0aa17b7478e48a9cb2f',
    messagingSenderId: '262423497086',
    projectId: 'examen2-ea832',
    storageBucket: 'examen2-ea832.appspot.com',
    iosBundleId: 'com.example.examen2Grupo4.RunnerTests',
  );
}