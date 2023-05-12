import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vault/pages/intro_page.dart';
import 'package:vault/pages/login_or_register_page.dart';
import 'package:vault/pages/home_page.dart';
import 'package:vault/pages/form.dart';
import 'package:vault/pages/verify_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return VerifyEmail();
          } else {
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
