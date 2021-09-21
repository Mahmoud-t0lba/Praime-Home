import 'package:flutter/material.dart';

Widget centerLogo({
  required String image,
  double? height,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        height: height,
        child: Image.asset(image),
      ),
    ],
  );
}
