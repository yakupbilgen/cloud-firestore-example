import 'package:flutter/material.dart';

import '../constant/constant.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                child: const Text('Register'),
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
