// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_app_ui/Pages/log_in.dart';
import 'package:learning_app_ui/Pages/logged_out.dart';
import 'package:learning_app_ui/Pages/signup_page.dart';
import 'package:learning_app_ui/main.dart';
import 'package:learning_app_ui/myaccount_container.dart';
import 'home_page.dart';
import 'my_classes.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 244, 247),
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
          icon: Icon(
            Icons.person_outline,
            color: Color(0xff1687a7),
          ),
          label: 'Account',
        )
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Icon(Icons.arrow_back_ios,
                        color: Color(0xff1687a7), size: 30)),
                Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: Text('My Account',
                      style: GoogleFonts.montserrat(
                          color: Color(0xff1687a7),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          //Container

          Container(
            height: 200,
            width: double.infinity,
            color: Color(0xff1687a7),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      image: DecorationImage(
                          image: AssetImage('lib/img/saba.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Saba Aqib',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'codewithsaba@gmail.com',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ]),
          ),
          SizedBox(height: 30),
          //Text
          Container(
            height: 300,
            width: double.infinity,
            // color: Colors.green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyAccountText(
                  myAccountContainerText: 'Account Setting',
                ),
                //Text
                MyAccountText(
                  myAccountContainerText: 'Download Options',
                ),
                //Text
                MyAccountText(
                  myAccountContainerText: 'Notification Setting',
                ),
                SizedBox(height: 5),
                //Text
                MyAccountText(
                  myAccountContainerText: 'Privacy Policy',
                ),
                //Text
                MyAccountText(
                  myAccountContainerText: 'Help Center',
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Delete Account',
                        style: GoogleFonts.montserrat(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40),
// button logout
          Center(
            child: GestureDetector(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoggedOut()));
              }),
              child: Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xff1687a7),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text('Log Out',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
