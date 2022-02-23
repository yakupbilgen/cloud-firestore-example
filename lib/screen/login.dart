import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constant/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

bool passwordVisible = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(AppConstant.defaultPadding),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'E-mail',
                filled: true,
                fillColor: Color.fromARGB(99, 189, 189, 189),
                prefix: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: AppConstant.defaultHeight),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: passwordVisible,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
                suffixIcon: Icon(Icons.remove_red_eye),
                filled: true,
                fillColor: Color.fromARGB(99, 189, 189, 189),
              ),
            ),
            const SizedBox(height: AppConstant.defaultHeight),
            Container(
              width: deviceSize.width,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(AppConstant.defaultBorderRadius),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
