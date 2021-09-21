import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget customProject({
  String? image,
  String? text,
  String? text2,
}) =>
    SizedBox(
      width: 150,
      height: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image!),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            text!,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            text2!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
