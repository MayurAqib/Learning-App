// ignore_for_file: sized_box_for_whitespace, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class MyClassContainer extends StatelessWidget {
  final myClassContainerImage;
  final String myClassContainerSubject;
  final String myClassContainerTopic;
  final String myClassContainerPercent;
  final myClassContainerPercentIndicating;

  const MyClassContainer(
      {super.key,
      required this.myClassContainerImage,
      required this.myClassContainerPercent,
      required this.myClassContainerSubject,
      required this.myClassContainerTopic,
      required this.myClassContainerPercentIndicating});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 233, 244, 247),
          boxShadow: [
            BoxShadow(
                // color: Color(0xff1687a7)
                color: Colors.grey,
                blurRadius: 1)
          ]),
      // color: Colors.grey[400],
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        //image
        Container(
          height: 170,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(myClassContainerImage), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 10),

        //column having texts
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                myClassContainerSubject,
                style: GoogleFonts.montserrat(
                    color: const Color(0xff1687a7),
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(myClassContainerTopic,
                  style: GoogleFonts.montserrat(
                      color: const Color(0xff1687a7),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      myClassContainerPercent,
                      style: GoogleFonts.montserrat(
                          color: const Color(0xff1687a7)),
                    ),
                  ),
                  const SizedBox(height: 5),
                  LinearPercentIndicator(
                    animation: true,
                    animationDuration: 1500,
                    width: 140.0,
                    lineHeight: 18.0,
                    percent: myClassContainerPercentIndicating,
                    backgroundColor: const Color.fromARGB(255, 173, 207, 216),
                    progressColor: const Color(0xff1687a7),
                    barRadius: const Radius.circular(20),
                  ),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
