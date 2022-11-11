import 'package:app_training/screens/navigation_bar/navigation.dart';
import 'package:app_training/screens/sign_up/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Hello again
          Text(
            "MyBlog",
            style: TextStyle(
              fontFamily: "Poppins",
              shadows: [
                Shadow(
                  color: Colors.blueGrey.shade500,
                  blurRadius: 15,
                  offset: Offset.fromDirection(10, -3.0),
                ),
              ],
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[900],
              fontSize: 40,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            "Design your own blog",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
              shadows: [
                Shadow(
                  color: Colors.grey.shade500,
                  blurRadius: 15,
                  offset: Offset.fromDirection(10, -3.0),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          //email textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                  color: Colors.grey.shade200,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    spreadRadius: 3.0,
                    blurRadius: 3.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 15),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                    ),
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          //space
          const SizedBox(
            height: 10,
          ),
          // password textfield
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                  color: Colors.grey.shade200,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    spreadRadius: 3.0,
                    blurRadius: 3.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 15),
                    prefixIcon: Icon(Icons.lock_outlined),
                    hintText: "Password",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          //sign in button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ScaleTap(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Navigation(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 120.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueGrey[900],
                ),
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //Don't have account yet? Sign Up
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have account yet?",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                width: 5,
              ),
              ScaleTap(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blueGrey[900],
                    decorationThickness: 1.2,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
