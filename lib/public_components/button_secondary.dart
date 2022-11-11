import 'package:app_training/constant.dart';
import 'package:flutter/material.dart';

class ButtonSecondary extends StatelessWidget {
  final Function()? onPressed;
  final Color? primaryColor;
  final String text;
  final IconData? icon;
  const ButtonSecondary(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.icon,
      this.primaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

        backgroundColor: Colors.white,
        primary: primaryColor ?? kPrimaryColor, //text,icon & overlay, use surface for disabled state
        side: BorderSide(color: primaryColor ?? kPrimaryColor),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon == null ? SizedBox() : Icon(icon),
         SizedBox(
            width: icon == null ? 0 : 5,
          ),
          Text(text),
        ],
      ),
    );
  }
}
