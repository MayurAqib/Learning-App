// ignore_for_file: prefer_const_constructors

// import 'dart:html';

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:learning_app_ui/Pages/book_your_class.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_app_ui/Pages/home_page.dart';
import 'package:learning_app_ui/my_class_container.dart';

import 'my_account.dart';

class MyClasses extends StatelessWidget {
  const MyClasses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 244, 247),
      // ignore: prefer_const_literals_to_create_immutables

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
          icon: Icon(
            Icons.class_outlined,
            color: Color(0xff1687a7),
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
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookYourClass()));
                  },
                  child: Icon(Icons.arrow_back_ios,
                      color: Color(0xff1687a7), size: 30)),
              Padding(
                padding: const EdgeInsets.only(left: 87),
                child: Text('MY CLASSES',
                    // textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Color(0xff1687a7),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
          SizedBox(height: 50),
          MyClassContainer(
              myClassContainerImage:
                  'https://www.rlogical.com/wp-content/uploads/2020/07/flutter_top_banner.png',
              myClassContainerPercent: '60 Percent',
              myClassContainerSubject: 'Flutter and Dart',
              myClassContainerTopic: 'Stateful Widget',
              myClassContainerPercentIndicating: 0.6),
          SizedBox(height: 50),
          MyClassContainer(
              myClassContainerImage:
                  'https://img.freepik.com/free-vector/realistic-ui-ux-background_52683-68896.jpg?w=740&t=st=1677265734~exp=1677266334~hmac=7b80b1a5ac5d0898abaf81d0f2f62556331c31354061c46fcc666e38b7b99b41',
              myClassContainerPercent: '40 Percent',
              myClassContainerSubject: 'Flutter and Dart',
              myClassContainerTopic: 'Hero Animation',
              myClassContainerPercentIndicating: 0.4)
        ]),
      ),
    );
  }
}
