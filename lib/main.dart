// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screens/onbording_screen.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnbordingScreen(),
    );
  }
}
