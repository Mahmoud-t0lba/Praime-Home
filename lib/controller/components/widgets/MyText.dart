import 'package:flutter/material.dart';

Widget myText({
  String? text,
  String? font,
  double? size,
  Color? color,
  FontWeight? fontWeight,
  TextOverflow? overflow,
  int? max,
}) {
  return Text(
    text!,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontFamily: font,
      fontWeight: fontWeight,
    ),
    overflow: overflow,
    maxLines: max,
  );
}
