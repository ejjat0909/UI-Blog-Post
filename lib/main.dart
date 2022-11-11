import 'package:app_training/screens/sign_in/sign_in.dart';
import 'package:app_training/screens/navigation_bar/navigation.dart';
import 'package:app_training/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
