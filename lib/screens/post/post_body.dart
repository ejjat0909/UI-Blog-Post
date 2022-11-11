import 'dart:async';
import 'dart:io';
import 'package:app_training/public_components/button_primary.dart';
import 'package:app_training/screens/homepage/homepage.dart';
import 'package:app_training/screens/navigation_bar/navigation.dart';
import 'package:app_training/screens/post/edit_post.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class PostBody extends StatefulWidget {
  const PostBody({super.key});

  @override
  State<PostBody> createState() => _PostBodyState();
}

class _PostBodyState extends State<PostBody> {
  File? image;

  Future pickImage() async {
    //access gallery and get selected image path
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image");
    }
  }

  TextEditingController textarea = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //Able to scroll the screen
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //Top container to upload image
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(20),
              dashPattern: [10, 10],
              color: Colors.grey,
              strokeWidth: 2,
              child: Container(
                  width: 300,
                  height: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: image == null
                      ? InkWell(
                          //show this if no img
                          onTap: () => pickImage(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.02),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.grey,
                              size: 50,
                            ),
                          ))
                      : ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)),
                          child: Image.file(
                            image!,
                            fit: BoxFit.cover,
                          ))),
            ),
            //Text field for title and descripton
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  TextField(
                    // controller: textarea,
                    keyboardType: TextInputType.multiline,
                    maxLines: 1,
                    decoration: InputDecoration(
                      disabledBorder: null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      hintText: "Title",
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: textarea,
                    keyboardType: TextInputType.multiline,
                    maxLines: 10,
                    decoration: InputDecoration(
                      disabledBorder: null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      hintText: "Description",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.redAccent)),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: 100,
                    //button to post
                    child: ButtonPrimary(
                      onPressed: (() {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => Navigation()),
                            (route) => false);
                      }),
                      text: "Post",
                      style: 1,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
