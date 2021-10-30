import 'package:flutter/material.dart';

Widget buildTextField({
  String? hint,
  TextEditingController? controller,
  IconData? icon,
  bool? suffix,
  TextInputType? textInputType,
  Function? validate,
  bool? isPassword,
  Function? onTab,
  bool? password,
}) =>
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: TextFormField(
        validator: (s) {
          validate!(s);
        },
        keyboardType: textInputType,
        controller: controller,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.all(
              const Radius.circular(30),
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
            const Radius.circular(30),
          )),
          prefixIcon: Icon(icon, size: 25),
          hintText: hint,
          suffixIcon: suffix == true
              ? Visibility(
                  visible: password!,
                  child: InkWell(
                      onTap: () => onTab, child: Icon(Icons.visibility_off)),
                  replacement: InkWell(
                      onTap: () => onTab, child: Icon(Icons.visibility)),
                )
              : Container(
                  width: 1,
                ),
        ),
        obscureText: isPassword ?? false,
      ),
    );
