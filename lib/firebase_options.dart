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
    apiKey: 'AIzaSyCa2SZMxki0eAmkpeyMRafsl_YyeGRHAS0',
    appId: '1:1036048061737:web:649db7d4a493ac7ee59338',
    messagingSenderId: '1036048061737',
    projectId: 'digital-d0ce7',
    authDomain: 'digital-d0ce7.firebaseapp.com',
    storageBucket: 'digital-d0ce7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDl7758M9h3RHQip4n46qK34lilvLjRQ5I',
    appId: '1:1036048061737:android:0f45ae6b69e3a810e59338',
    messagingSenderId: '1036048061737',
    projectId: 'digital-d0ce7',
    storageBucket: 'digital-d0ce7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBtzGAZKWyJILd86yCXf-IDFOMuSGJHbhA',
    appId: '1:1036048061737:ios:0391714f1dbaf27ae59338',
    messagingSenderId: '1036048061737',
    projectId: 'digital-d0ce7',
    storageBucket: 'digital-d0ce7.appspot.com',
    androidClientId: '1036048061737-9acb4cuvmmdtqs8tgji5j899hhafhoj8.apps.googleusercontent.com',
    iosClientId: '1036048061737-hn02lb56eg13cg3q18koe6afslnd5n76.apps.googleusercontent.com',
    iosBundleId: 'com.example.digital',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBtzGAZKWyJILd86yCXf-IDFOMuSGJHbhA',
    appId: '1:1036048061737:ios:0391714f1dbaf27ae59338',
    messagingSenderId: '1036048061737',
    projectId: 'digital-d0ce7',
    storageBucket: 'digital-d0ce7.appspot.com',
    androidClientId: '1036048061737-9acb4cuvmmdtqs8tgji5j899hhafhoj8.apps.googleusercontent.com',
    iosClientId: '1036048061737-hn02lb56eg13cg3q18koe6afslnd5n76.apps.googleusercontent.com',
    iosBundleId: 'com.example.digital',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCa2SZMxki0eAmkpeyMRafsl_YyeGRHAS0',
    appId: '1:1036048061737:web:add2908d4a40960ce59338',
    messagingSenderId: '1036048061737',
    projectId: 'digital-d0ce7',
    authDomain: 'digital-d0ce7.firebaseapp.com',
    storageBucket: 'digital-d0ce7.appspot.com',
  );

}