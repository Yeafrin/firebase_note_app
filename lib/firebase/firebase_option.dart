import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: 'AIzaSyAZDlwKC1kxfKrKyWkEeXOsAieNpZiSekY',
      appId: '1:494504762610:android:2e4e00c580b458ef51846b',
      messagingSenderId: '494504762610 ',
      projectId: 'super-note-b57ec',
      storageBucket: 'super-note-b57ec.firebasestorage.app',
      databaseURL:
      'https://supernotes-50158-default-rtdb.asia-southeast1.firebasedatabase.app');

  static const FirebaseOptions ios = FirebaseOptions(
      apiKey: 'AIzaSyAZDlwKC1kxfKrKyWkEeXOsAieNpZiSekY',
      appId: '1:494504762610:android:2e4e00c580b458ef51846b',
      messagingSenderId: '494504762610 ',
      projectId: 'super-note-b57ec',
      storageBucket: 'super-note-b57ec.firebasestorage.app',
      iosBundleId: 'com.myapp.firebase_note_app_realtime_db',
      databaseURL:
      'https://super-note-b57ec-default-rtdb.firebaseio.com/');
}