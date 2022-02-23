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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'E-mail',
                filled: true,
                fillColor: Color.fromARGB(99, 189, 189, 189),
                prefix: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: AppConstant.defaultHeight),
            const TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
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
