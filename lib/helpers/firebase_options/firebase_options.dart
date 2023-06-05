import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:631699664739:android:1f527f4df944260db32d56',
        apiKey: 'AIzaSyCoHK2fD-jJOOdUAImVSHUwCJ3vJrSdOyU',
        projectId: 'e-commerce-pfa-d3344',
        messagingSenderId: '',
        iosBundleId: '',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:631699664739:android:1f527f4df944260db32d56',
        apiKey: 'AIzaSyCoHK2fD-jJOOdUAImVSHUwCJ3vJrSdOyU',
        projectId: 'e-commerce-pfa-d3344',
        messagingSenderId: '',
      );
    }
  }
}
