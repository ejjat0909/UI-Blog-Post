import 'package:app_training/constant.dart';
import 'package:app_training/screens/post/edit_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

class HomePageBody extends StatefulWidget {
  //homepage blog
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  List<String> image = [
    "assets/images/profilepic.png",
    "assets/images/profilepic.png",
  ];

  List<String> name = [
    "Emily Larkson",
    "Emily Larkson",
  ];

  List<String> imageDetail = [
    "assets/images/imageDetail.png",
    "assets/images/imageDetail.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
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
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                            child: Image(
                          image: AssetImage(image[index]),
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(name[index]),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Image(
                        width: 320,
                        fit: BoxFit.cover,
                        image: AssetImage(imageDetail[index]),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "How to become Software Engineer",
                          style: TextStyle(
                            color: Colors.blueGrey[900],
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquet porttitor lacus luctus accumsan tortor posuere ac dhfhd vhdfh dh dh hfu egugfgreyghsfgrwghfsogh.",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.blueGrey[200]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ScaleTap(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditPost(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 10.0,
                            ),
                            child: Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blueGrey.shade900,
                                    width: 1,
                                  ),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.edit,
                                      color: kBlack,
                                    ),
                                    Text(
                                      "Edit Post",
                                      style: TextStyle(
                                        color: Colors.blueGrey[900],
                                        fontSize: 14,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          );
        },
      ),
    );
  }
}
