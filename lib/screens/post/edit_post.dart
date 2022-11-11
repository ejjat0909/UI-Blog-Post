import 'package:app_training/constant.dart';
import 'package:app_training/screens/post/edit_post_body.dart';
import 'package:flutter/material.dart';

class EditPost extends StatefulWidget {
  EditPost({Key? key}) : super(key: key);

  @override
  State<EditPost> createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: const BackButton(
          color: kBlack,
        ),
        title: const Text(
          "Edit Blog Post",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Center(
        child: EditPostBody(),
      ),
    );
  }
}
