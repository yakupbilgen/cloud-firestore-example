import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

Future<void> createUserEmailAndPassword() async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: "example@email.com", password: "123456");

    debugPrint(userCredential.user?.email);
  } on FirebaseAuthException catch (e) {
    if (e.code == "weak-password") {
      debugPrint("The password provided is to weak.");
    } else if (e.code == "email-already-in-use") {
      debugPrint("The account already exists for the email.");
    }
  } catch (e) {
    debugPrint(e.toString());
  }
}
