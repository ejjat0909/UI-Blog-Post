import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  final String? title;
  final Widget body;
  const CustomCard({Key? key, this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.h,
          horizontal: 20.w,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: -4,
              blurRadius: 20,
              offset: const Offset(0, 9), // changes position of shadow
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            title != null
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 5),
                    child: Text(
                      title!,
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  )
                : SizedBox(),
            title != null ? const Divider() : SizedBox(),
            Flexible(
              child: body,
              // child: body,
            )
          ],
        ),
      ),
    );
  }
}
