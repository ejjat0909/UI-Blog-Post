import 'package:app_training/public_components/button_primary.dart';
import 'package:app_training/screens/profile/profile_top_part.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0), //Padding for whole page
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileTopPart(),
         
        ],
      ),
    );
  }
}
