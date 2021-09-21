import 'package:flutter/material.dart';

Widget setImage({
  required String image,
  required String text,
}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 18, top: 5),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xff00EEFF),
                Color(0xFF19A3FF),
              ]),
        ),
        child: Image.asset(
          image,
          color: Colors.white,
        ),
      ),
      Container(
          margin: EdgeInsets.only(left: 18, top: 5),
          child: Text(
            text,
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ))
    ],
  );
}
