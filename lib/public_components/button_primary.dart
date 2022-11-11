import 'package:app_training/constant.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final Function()? onPressed;
  final int? style;
  final String text;
  final IconData? icon;
  final Color? primaryColor;
  final Color? shadowColor;
  final Color? textColor;
  final Size? size;
  const ButtonPrimary({
    Key? key,
    required this.onPressed,
    required this.text,
    this.style,
    this.icon,
    this.primaryColor,
    this.shadowColor = kPrimaryColor,
    this.textColor,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: style == 1
            ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
            : StadiumBorder(),
        fixedSize: size,
        shadowColor: shadowColor,
        onPrimary: textColor,
        primary: primaryColor != null
            ? primaryColor
            : kPrimaryColor, //text,icon & overlay, use surface for disabled state
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon == null ? const SizedBox() : Icon(icon),
          const SizedBox(
            width: 5,
          ),
          Text(text),
        ],
      ),
    );
  }
}
