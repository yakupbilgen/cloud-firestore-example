import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screen/login.dart';
import './screen/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}
