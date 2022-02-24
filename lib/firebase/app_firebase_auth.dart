import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> createUserEmailAndPassword(String _email, String _password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: _email, password: _password);

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

Future<void> signInUserEmailAndPassword(String _email, String _password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: _email, password: _password);

    debugPrint(userCredential.user?.email);
  } catch (e) {
    debugPrint(e.toString());
  }
}
