import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD_ADuCkTrrY43ZilrD3Xfp_2MKHL-dqeU",
            authDomain: "environmentapp-1a78b.firebaseapp.com",
            projectId: "environmentapp-1a78b",
            storageBucket: "environmentapp-1a78b.appspot.com",
            messagingSenderId: "1045617406778",
            appId: "1:1045617406778:web:38a4d33a839b287fcf5603"));
  } else {
    await Firebase.initializeApp();
  }
}
