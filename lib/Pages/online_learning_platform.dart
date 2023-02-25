// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:learning_app_ui/Pages/log_in.dart';
import 'package:google_fonts/google_fonts.dart';

class OnlineLearningPlatform extends StatelessWidget {
  const OnlineLearningPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 244, 247),
      body: Column(children: [
        SizedBox(
          height: 140,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xff1687a7),
            ),
            child: Center(
              child: Text(
                'Welcome to Edu Future',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 290,
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Colors.green,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-vector/programming-development-computer-programs-mobile-application_39422-707.jpg?w=740&t=st=1677259854~exp=1677260454~hmac=40c7bc5191fe38f0298b69a2fe98acc07cd4fbaa6da7e9e3d8e60c2d1a65353c'),
                    // scale: 2,
                    fit: BoxFit.cover)),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Online Learning Platform',
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              color: Color(0xff1687a7),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
            height: 80,
            child: Center(
              child: Text(
                'Online Education Platform is a must for now a days for students who want to achieve higher goals in their life. We ensure your career in best direction.',
                style: GoogleFonts.lato(
                    color: Colors.grey[600], fontSize: 15, letterSpacing: 1),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SizedBox(height: 25),
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogInPage(),
                  ));
            },
            child: Container(
              height: 60,
              width: 270,
              decoration: BoxDecoration(
                  color: Color(0xff1687a7),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text('Start Learning',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1)),
              ),
            ))
      ]),
    );
  }
}
