// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_app_ui/Pages/home_page.dart';
import 'package:learning_app_ui/Pages/my_classes.dart';
import 'package:learning_app_ui/Pages/select_class_listview.dart';

import 'package:learning_app_ui/bookcourse_listview_container.dart';

import 'my_account.dart';
// import 'package:learning_app_ui/flutter_dart_classes.dart';

class BookYourClass extends StatefulWidget {
  const BookYourClass({super.key});

  @override
  State<BookYourClass> createState() => _BookYourClassState();
}

class _BookYourClassState extends State<BookYourClass> {
  bool check = false;

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
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
                child: Icon(
                  Icons.home,
                  color: Color(0xff1687a7),
                )),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Icon(Icons.arrow_back_ios,
                      color: Color(0xff1687a7), size: 30)),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Text('BOOK YOUR CLASS',
                    style: GoogleFonts.montserrat(
                        color: Color(0xff1687a7),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
          const SizedBox(height: 10),
// Listview 2 Container ( subject wise classes + class details)
          Container(
            height: 200,
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CourseListview(
                  bookCourseName: 'Full Stack',
                  bookCourseNumber: '8 Courses',
                  bookCourseImage:
                      'https://img.freepik.com/free-vector/web-development-programmer-engineering-coding-website-augmented-reality-interface-screens-developer-project-engineer-programming-software-application-design-cartoon-illustration_107791-3863.jpg?w=740&t=st=1677257553~exp=1677258153~hmac=306f81df65155df969df139477b5abc7c7965eb87f6d7157ef56437d70e55576',
                ),
                CourseListview(
                  bookCourseName: 'Flutter and Dart',
                  bookCourseNumber: '12 Courses',
                  bookCourseImage:
                      'https://appinventiv.com/wp-content/uploads/sites/1/2022/05/Flutter-web-app.webp',
                ),
                CourseListview(
                  bookCourseName: 'React and Redux',
                  bookCourseNumber: '16 Courses',
                  bookCourseImage:
                      'https://miro.medium.com/max/1400/1*ZYPmpirmSefaqphunFB7rg.jpeg',
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
//Row (column(text select class + button)+ column(text select class + botton))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //1st Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Select Class Text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text('Select Class',
                        style: GoogleFonts.montserrat(
                            color: Color(0xff1687a7),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  //Listview Inner Container
                  Container(
                    height: 50,
                    width: 170,
                    //Select class Listview
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SelectClassListView(
                          selectClassListviewName: 'Flutter and Dart',
                          selectClassListViewColor: Color(0xff1687a7),
                        ),
                        SelectClassListView(
                            selectClassListViewColor: Color(0xff1687a7),
                            selectClassListviewName: 'Full Stack'),
                        SelectClassListView(
                            selectClassListViewColor: Color(0xff1687a7),
                            selectClassListviewName: 'React Redux'),
                      ],
                    ),
                  )
                ],
              ),
              //2nd Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Class Type Text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text('Class Type',
                        style: GoogleFonts.montserrat(
                            color: Color(0xff1687a7),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  //Listview Inner Container
                  Container(
                    height: 50,
                    width: 170,
                    //Select class Listview
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SelectClassListView(
                            selectClassListViewColor:
                                Color.fromARGB(255, 80, 175, 199),
                            selectClassListviewName: 'Live Class'),
                        SelectClassListView(
                            selectClassListViewColor:
                                Color.fromARGB(255, 80, 175, 199),
                            selectClassListviewName: 'Group Class'),
                        SelectClassListView(
                            selectClassListViewColor:
                                Color.fromARGB(255, 80, 175, 199),
                            selectClassListviewName: 'Individual Class'),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
// text Flutter and dart
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Flutter and Dart',
              style: GoogleFonts.montserrat(
                  color: Color(0xff1687a7),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
// Listview topic wise class + topic details
          // ignore: prefer_const_literals_to_create_immutables
          Container(
            height: 200,
            width: 370,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: ListView(
              scrollDirection: Axis.horizontal,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CourseListview(
                    bookCourseImage:
                        'https://www.rlogical.com/wp-content/uploads/2020/07/flutter_top_banner.png',
                    bookCourseName: 'Flutter and Dart',
                    bookCourseNumber: 'Stateful Widget'),
                CourseListview(
                    bookCourseImage:
                        'https://img.freepik.com/free-vector/realistic-ui-ux-background_52683-68896.jpg?w=740&t=st=1677265734~exp=1677266334~hmac=7b80b1a5ac5d0898abaf81d0f2f62556331c31354061c46fcc666e38b7b99b41',
                    bookCourseName: 'Flutter and Dart',
                    bookCourseNumber: 'Hero Animation'),
                CourseListview(
                    bookCourseImage:
                        'https://img.freepik.com/free-vector/app-development-landing-page_52683-47903.jpg?w=740&t=st=1677265560~exp=1677266160~hmac=e32c81413d45486201f16175d6dfc22804406a8a6691c9a50ec99c6112efa05a',
                    bookCourseName: 'Flutter and Dart',
                    bookCourseNumber: 'ClipRRect'),
              ],
            ),
          ),

          // SizedBox(height: 5),
// checkbox + are you sure text
          Row(
            children: [
              Transform.scale(
                scale: 1.4,
                child: Checkbox(
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    side: BorderSide(color: Color(0xff1687a7), width: 2),
                    value: check,
                    onChanged: (bool? value) {
                      setState(() {
                        check = value!;
                      });
                    }),
              ),
              SizedBox(width: 5),
              //text are you sure?
              Text(
                'Are you Sure with Selected Classes?',
                style: GoogleFonts.montserrat(
                    // color: Color(0xff1687a7),
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClasses()));
            }),
            child: Center(
              child: Container(
                height: 55,
                width: 270,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff1687a7)),
                child: Center(
                  child: Text(
                    'Book Class Now',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
          //Button with text Book Class Now
        ]),
      ),
    );
  }
}
