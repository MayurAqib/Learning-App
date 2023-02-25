// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterDartClass extends StatelessWidget {
  final String flutterDartTopic;
  final flutterDartTopicImage;
  const FlutterDartClass(
      {super.key,
      required this.flutterDartTopic,
      required this.flutterDartTopicImage});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            height: 110,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(flutterDartTopicImage),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 180,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 244, 247),
                borderRadius: BorderRadius.circular(7),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(color: Color(0xff1687a7), blurRadius: 1)
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flutter and Dart',
                    style: GoogleFonts.montserrat(
                        color: Color(0xff1687a7),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    flutterDartTopic,
                    style: GoogleFonts.montserrat(color: Color(0xff1687a7)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
