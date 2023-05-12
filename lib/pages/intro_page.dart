import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vault/components/mybutton.dart';
import 'package:vault/pages/login_or_register_page.dart';

import 'auth_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  void Navigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginOrRegisterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/images/logo.png'),
            const SizedBox(
              height: 100,
            ),
            Image.asset('lib/images/man.png'),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Securely manage your \n personal data on-the-go.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 130,
            ),
            MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AuthPage()),
                  );
                },
                text: "Get Started")
          ],
        ),
      ),
    )));
  }
}
