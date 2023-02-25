// ignore_for_file: prefer_const_constructors

// import 'dart:math';

import 'package:flutter/material.dart';

class LoginTextfield extends StatelessWidget {
  final String hintText;
  const LoginTextfield({required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xff1687a7), width: 2)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0xff1687a7), width: 2),
          )),
    );
  }
}
