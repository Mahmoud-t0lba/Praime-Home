import 'package:flutter/material.dart';

Widget CustomTextFormField({
  required String hint,
  suffix,
}) =>
    TextFormField(
      textAlign: TextAlign.right,
      autocorrect: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        suffixIcon: Icon(
          suffix,
          color: Colors.black,
        ),
        hintText: hint,
        hintStyle: TextStyle(fontSize: 16),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
      ),
    );
