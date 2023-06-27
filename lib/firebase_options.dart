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
    apiKey: 'AIzaSyCTWZThuSQBM9NkV-SpDYHN8CUArFzCkoQ',
    appId: '1:89033586484:web:098ec16f54613fd0599761',
    messagingSenderId: '89033586484',
    projectId: 'myapp-3a549',
    authDomain: 'myapp-3a549.firebaseapp.com',
    storageBucket: 'myapp-3a549.appspot.com',
    measurementId: 'G-LVN4BHD5RD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCseAhlVs_PerYcRPD4TtRvYBqlfmP4W1c',
    appId: '1:89033586484:android:e12e88cd0882f545599761',
    messagingSenderId: '89033586484',
    projectId: 'myapp-3a549',
    storageBucket: 'myapp-3a549.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEH3nwZkftOJtetPIQSnu9IE9gHeLo4CI',
    appId: '1:89033586484:ios:ab65e1aa41179ab6599761',
    messagingSenderId: '89033586484',
    projectId: 'myapp-3a549',
    storageBucket: 'myapp-3a549.appspot.com',
    iosClientId: '89033586484-4qho0l8ap3267ci37paotavms6f3o954.apps.googleusercontent.com',
    iosBundleId: 'com.example.authWithFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEH3nwZkftOJtetPIQSnu9IE9gHeLo4CI',
    appId: '1:89033586484:ios:4ad1be996aefdba4599761',
    messagingSenderId: '89033586484',
    projectId: 'myapp-3a549',
    storageBucket: 'myapp-3a549.appspot.com',
    iosClientId: '89033586484-n0f2d55sehu95mld1aighca2sdd7i7kd.apps.googleusercontent.com',
    iosBundleId: 'com.example.authWithFirebase.RunnerTests',
  );
}
