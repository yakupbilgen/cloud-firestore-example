import 'package:flutter/material.dart';

import '../constant/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

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
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'E-mail'),
            ),
            const SizedBox(height: AppConstant.defaultHeight),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
            const SizedBox(height: AppConstant.defaultHeight),
            Container(
              width: deviceSize.width,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
