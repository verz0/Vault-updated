import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:vault/pages/auth_page.dart';
import 'package:vault/pages/data.dart';
import 'package:vault/pages/home_page.dart';
import 'package:vault/pages/intro_page.dart';
import 'package:vault/pages/form.dart';
import 'firebase_options.dart';
import 'package:vault/pages/verify_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    navigatorKey: navigatorkey,
    home: MainPage(),
  ));
}

final navigatorkey = GlobalKey<NavigatorState>();

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Something went wrong'));
        } else if (snapshot.hasData) {
          return HomePage();
        } else {
          return IntroPage();
        }
      },
    ));
  }
}
