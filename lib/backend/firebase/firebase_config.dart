import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCjlZ0Ay5i1aymtbbT82ISfQ7QaT_8LaB0",
            authDomain: "itechnozclub-881fc.firebaseapp.com",
            projectId: "itechnozclub-881fc",
            storageBucket: "itechnozclub-881fc.appspot.com",
            messagingSenderId: "693361099623",
            appId: "1:693361099623:web:aaba15e7a7729f4a4225c2",
            measurementId: "G-CDNNWEQFBV"));
  } else {
    await Firebase.initializeApp();
  }
}
