import 'package:flutter/material.dart';
import '../../../res.dart';

Widget contaierImage() => Container(
      width: 160,
      height: 135,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        image: DecorationImage(
          image: AssetImage(Res.pic2),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
