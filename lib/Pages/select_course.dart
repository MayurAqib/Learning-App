// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:learning_app_ui/Pages/home_page.dart';
import 'package:learning_app_ui/course_level_container.dart';

class SelectCourse extends StatefulWidget {
  const SelectCourse({super.key});

  @override
  State<SelectCourse> createState() => _SelectCourseState();
}

class _SelectCourseState extends State<SelectCourse> {
  bool isCheck = false;
// level name
  final List Level = ['Beginner', 'Intermediate', 'Expert'];

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color(0xff1687a7);
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 244, 247),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 100,
            ),
            //Icon
            const Icon(Icons.arrow_back_ios,
                color: Color(0xff1687a7), size: 30),
            const SizedBox(height: 20),

            //text learning app
            Center(
              child: Text(
                'Edu Future App',
                style: GoogleFonts.lato(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1687a7)),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            //image
            Container(
              height: 350,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://storage.googleapis.com/cms-storage-bucket/acb0587990b4e7890b95.png'),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(height: 20),

            //text select your level course
            Text(
              'Select your course level',
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1687a7)),
            ),
            const SizedBox(height: 20),
            //3 container in a row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CourseLevelContainer(
                  courseLevel: Level[0],
                  isSelectedColor: true,
                ),
                CourseLevelContainer(
                  courseLevel: Level[1],
                  isSelectedColor: false,
                ),
                CourseLevelContainer(
                  courseLevel: Level[2],
                  isSelectedColor: false,
                ),
              ],
            ),
            SizedBox(height: 50),
            //checkbox + text ere you sure?
            Row(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      side: BorderSide(color: Color(0xff1687a7), width: 2),
                      value: isCheck,
                      onChanged: ((bool? value) {
                        setState(() {
                          isCheck = value!;
                        });
                      })),
                ),
                SizedBox(width: 5),
                Text('Are you sure?',
                    style: GoogleFonts.lato(
                        color: Color(0xff1687a7),
                        fontWeight: FontWeight.bold,
                        fontSize: 16))
              ],
            ),
            SizedBox(height: 20),
            //container with text continue
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Center(
                child: Container(
                  height: 55,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xff1687a7),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text('Continue',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
