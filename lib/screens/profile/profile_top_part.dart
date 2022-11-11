import 'package:flutter/material.dart';

class ProfileTopPart extends StatefulWidget {
  const ProfileTopPart({super.key});

  @override
  State<ProfileTopPart> createState() => _ProfileTopPartState();
}

class _ProfileTopPartState extends State<ProfileTopPart> {
  String image = "assets/images/profilepic.png";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: -4,
            blurRadius: 35,
            offset: const Offset(0, 9), // changes position of shadow
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 80,
              child: image == null
                  //If no profile picture
                  ? Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: Icon(
                        Icons.image_outlined,
                        color: Colors.grey,
                        size: 50,
                      ),
                    )
                  //If profile picture has been uploaded
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(80.0),
                      child: Image.asset(image)),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("example@gmail.com",
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Joined 10 Oct 2022",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
