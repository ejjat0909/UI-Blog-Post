import 'package:app_training/public_components/button_primary.dart';
import 'package:app_training/screens/profile/profile_body.dart';
import 'package:app_training/screens/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      //Content
      body: Center(
        child: ProfileBody(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ButtonPrimary(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
                (route) => false);
          },
          icon: Icons.logout,
          text: "Logout",
          style: 1,
          primaryColor: Colors.red,
        ),
      ),
    );
  }
}
