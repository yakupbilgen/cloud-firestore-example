import 'package:cloud_firestore_example/firebase/app_firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

bool passwordVisible = false;
Icon passwordSuffixIcon = const Icon(Icons.remove_red_eye_sharp);
TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

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
              controller: _emailController,
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
              controller: _passwordController,
              obscureText: passwordVisible,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    passwordVisible = !passwordVisible;
                    (passwordVisible == true)
                        ? passwordSuffixIcon =
                            const Icon(Icons.remove_red_eye_outlined)
                        : passwordSuffixIcon =
                            const Icon(Icons.remove_red_eye_sharp);
                    setState(() {});
                  },
                  icon: passwordSuffixIcon,
                ),
                filled: true,
                fillColor: const Color.fromARGB(99, 189, 189, 189),
              ),
            ),
            const SizedBox(height: AppConstant.defaultHeight),
            Container(
              width: deviceSize.width,
              child: ElevatedButton(
                onPressed: () => signInUserEmailAndPassword(
                    _emailController.text, _passwordController.text),
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
