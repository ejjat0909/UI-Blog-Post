import 'dart:async';
import 'dart:io';
import 'package:app_training/public_components/button_primary.dart';
import 'package:app_training/public_components/button_secondary.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class EditPostBody extends StatefulWidget {
  const EditPostBody({super.key});

  @override
  State<EditPostBody> createState() => _EditPostBodyState();
}

class _EditPostBodyState extends State<EditPostBody> {
  File? image;

  Future pickImage() async {
    //access gallery and get selected image path for printed receipt
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
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
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
                        onTap: () => pickImage(),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.02),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5)),
                          ),
                          child: const Icon(
                            Icons.image_outlined,
                            color: Colors.grey,
                            size: 50,
                          ),
                        ))
                    : ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)),
                        child: Image.asset(
                          "assets/images/profilepic.png",
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
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
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      hintText: "Description",
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.redAccent)),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ])),
            //Bottom button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonSecondary(
                    onPressed: () {},
                    primaryColor: Colors.red,
                    text: "Delete",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ButtonSecondary(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    text: "Cancel",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: ButtonPrimary(
                      onPressed: () {},
                      text: "Update",
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
