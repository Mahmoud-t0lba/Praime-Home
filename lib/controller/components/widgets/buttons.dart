import 'package:flutter/material.dart';

Widget buildButton({
  Function? onTap,
  Widget? child,
  String? title,
  BuildContext? context,
  double? width,
}) =>
    InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        width: width,
        height: 45,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            color: Color(0xFF19A3FF), borderRadius: BorderRadius.circular(30)),
        alignment: Alignment.center,
        child: child ??
            Text(
              title!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
      ),
    );
