// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, sized_box_for_whitespace

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseListview extends StatelessWidget {
  final String bookCourseName;
  final bookCourseImage;
  final String bookCourseNumber;

  const CourseListview(
      {super.key,
      required this.bookCourseImage,
      required this.bookCourseName,
      required this.bookCourseNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          //image
          Container(
            height: 120,
            width: 170,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(bookCourseImage))),
          ),
          SizedBox(height: 10),
          Container(
            height: 60,
            width: 170,
            // ignore: prefer_const_literals_to_create_immutables
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(color: Color(0xff1687a7), spreadRadius: 1)
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookCourseName,
                      style: GoogleFonts.roboto(
                          color: Color(0xff1687a7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Text(bookCourseNumber,
                        style: GoogleFonts.roboto(
                          color: Color(0xff1687a7),
                          fontSize: 13,
                        ))
                  ]),
            ),
          )
          //details
        ],
      ),
    );
  }
}
