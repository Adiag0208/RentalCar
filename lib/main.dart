import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rentalcar/login.dart';
import 'package:rentalcar/pages/firstpage.dart';
import 'package:rentalcar/pages/secondpage.dart';
import 'package:rentalcar/pages/thirdpage.dart';
import 'package:rentalcar/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        FirstPage.id: (context) => FirstPage(),
        SecondPage.id: (context) => SecondPage(),
        ThirdPage.id: (context) => ThirdPage()
      },
    );
  }
}
