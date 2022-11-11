import 'package:app_training/constant.dart';
import 'package:app_training/screens/homepage/homepage.dart';
import 'package:app_training/screens/navigation_bar/navigation.dart';
import 'package:app_training/screens/sign_in/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        //Name
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: kWhite,
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
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(fontSize: 15),
              prefixIcon: Icon(
                Icons.person_outline_rounded,
              ),
              hintText: "Name",
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        //Email
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
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
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(fontSize: 15),
              prefixIcon: Icon(
                Icons.email_outlined,
              ),
              hintText: "Email",
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        //Password
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
                spreadRadius: 3.0,
                blurRadius: 3.0,
              ),
            ],
            color: Colors.white,
            border: Border.all(
              width: 2,
              color: Colors.grey.shade200,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              hintStyle: TextStyle(fontSize: 15),
              prefixIcon: Icon(
                Icons.lock_outline_rounded,
              ),
              hintText: "Password",
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "*Use combination of letters and numbers with minimum 8 letters",
          style: TextStyle(
            color: Colors.blueGrey[900],
            fontSize: 11,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        //Confirm Password
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
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
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(fontSize: 15),
              prefixIcon: Icon(
                Icons.lock_outline_rounded,
              ),
              hintText: "Confirm Password",
              border: InputBorder.none,
            ),
            obscureText: true,
          ),
        ),
        const SizedBox(
          height: 190,
        ),
        //Button
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
                (route) => false);
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
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
