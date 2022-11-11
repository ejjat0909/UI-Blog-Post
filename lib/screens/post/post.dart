import 'package:app_training/constant.dart';
import 'package:app_training/screens/navigation_bar/navigation.dart';
import 'package:app_training/screens/post/post_body.dart';
import 'package:app_training/screens/profile/profile_body.dart';
import 'package:app_training/screens/profile/profile.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: const BackButton(
          color: kBlack,
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        //   onPressed: () => Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                     builder: (context) => Navigation(),
        //                   ))
        // ),
        title: const Text(
          "New Blog Post",
          style: TextStyle(color: Colors.black),
        ),
      ),
      //Content
      body: const Center(
        child: PostBody(),
      ),
    );
  }
}
