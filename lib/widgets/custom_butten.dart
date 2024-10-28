import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttenText,
      this.onTap,
      this.backGroundColor,
      this.textcolor,
      this.fontSize,  this.fontWeight});
  final String buttenText;
  final VoidCallback? onTap;
  final Color? backGroundColor;
  final Color? textcolor;
  final double? fontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
            child: Text(
          buttenText,
          style: TextStyle(
              color: textcolor,
              fontSize: fontSize,
              fontWeight: fontWeight),
        )),
      ),
    );
  }
}