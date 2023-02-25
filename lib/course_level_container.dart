// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CourseLevelContainer extends StatelessWidget {
  final bool isSelectedColor;
  final String courseLevel;

  const CourseLevelContainer({
    super.key,
    required this.courseLevel,
    required this.isSelectedColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 40,
        width: 115,
        decoration: BoxDecoration(
            color: isSelectedColor
                ? Color(0xff1697a7)
                : Color.fromARGB(255, 174, 216, 221),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          courseLevel,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
