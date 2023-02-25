// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:learning_app_ui/Pages/book_your_class.dart';
import 'package:learning_app_ui/Pages/select_course.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_app_ui/video_lecture_container.dart';

import 'my_account.dart';
import 'my_classes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 244, 247),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xff1687a7),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyClasses(),
                  ));
            },
            child: Icon(
              Icons.class_rounded,
              color: Color(0xff1687a7),
            ),
          ),
          label: 'My Clases',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAccount()));
              },
              child: Icon(
                Icons.person,
                color: Color(0xff1687a7),
              )),
          label: 'Account',
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 80),
          //Icon and Home text
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectCourse()));
                  },
                  child: Icon(Icons.arrow_back_ios,
                      color: Color(0xff1687a7), size: 30)),
              Padding(
                padding: const EdgeInsets.only(left: 125),
                child: Text('HOME',
                    style: GoogleFonts.montserrat(
                        color: Color(0xff1687a7),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
          SizedBox(height: 30),
          //Text Welcome Saba Aqib
          Text(
            'Welcome\nSaba Aqib',
            style: GoogleFonts.montserrat(
                color: Color(0xff1687a7),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          // Container button = BOOK Class and My Course
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  //Here come the Book Classes
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookYourClass(),
                      ));
                },
                child: Container(
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff1687a7)),
                    child: Center(
                      child: Text(
                        'Book Class',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff1687a7)),
                    child: Center(
                      child: Text(
                        'My Courses',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              )
            ],
          ),
          SizedBox(height: 25),
          // Text Last Class
          Text(
            'Last Classes',
            style: GoogleFonts.montserrat(
              color: Color(0xff1687a7),
              fontSize: 22,
            ),
          ),
          SizedBox(height: 10),
          // Videos Class Images listview double container in a column
          Container(
            height: 400,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                VideoLecture(
                  videoSubject: 'Flutter and Dart',
                  videoTopic: 'Stateful Widget',
                  videoDuration: '2h 25min',
                  videoNetworkAdrress:
                      'https://www.rlogical.com/wp-content/uploads/2020/07/flutter_top_banner.png',
                ),
                VideoLecture(
                    videoSubject: 'React Framework',
                    videoTopic: 'Lifecycle Methods',
                    videoDuration: '3h 15min',
                    videoNetworkAdrress:
                        'https://www.dreamhost.com/blog/wp-content/uploads/2022/07/Learn-React-Feature-750x498.jpeg')
              ],
            ),
          )
          //
        ]),
      ),
    );
  }
}
