import 'package:flutter/material.dart';

class TextNormalCustom extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;

  const TextNormalCustom({
    Key? key,
    required this.text,
    this.textStyle,
    this.padding,
    this.backgroundColor, this.fontSize, this.fontWeight, this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(8.0),
      color: backgroundColor ?? Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
            color: fontColor?? Colors.black,
            fontSize: fontSize??  15,
            fontWeight: fontWeight?? FontWeight.w900,
            fontFamily: "flasioMain"),
      ),
    );
  }
}