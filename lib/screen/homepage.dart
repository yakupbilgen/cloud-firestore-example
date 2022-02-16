import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('data'),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: _createUserEmailAndPassword,
        child: Icon(Icons.add),
      ),
    );
  }
}

Future<void> _createUserEmailAndPassword() async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: "example@email.com", password: "123456");

    debugPrint("email: ${userCredential.user?.email}");
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
