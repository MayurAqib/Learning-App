// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_app_ui/Pages/online_learning_platform.dart';
import 'package:learning_app_ui/Pages/select_course.dart';
import 'package:learning_app_ui/Pages/signup_page.dart';
import 'package:learning_app_ui/fb_google+.dart';
import 'package:learning_app_ui/login_textfield.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool isChecked = false;
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                //Log in text
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      OnlineLearningPlatform()));
                        },
                        child: Icon(Icons.arrow_back_ios,
                            color: Color(0xff1687a7), size: 30)),
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Text('LOG IN',
                          style: GoogleFonts.lato(
                              color: Color(0xff1687a7),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                SizedBox(height: 30),

                //learning app text
                Text(
                  'Edu Future',
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1687a7)),
                ),
                SizedBox(height: 60),
                //enter the login details text
                Text(
                  'Enter the log in details to access your Acoount',
                  style: GoogleFonts.lato(
                      color: Color(0xff1687a7),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                // facebook and google log in text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SocialLogInIcon(
                      socialimage:
                          'https://img.icons8.com/nolan/256/facebook.png',
                      socialapp: 'Facebook',
                      socialcolor: Colors.blue,
                    ),
                    SocialLogInIcon(
                      socialimage:
                          'https://www.freepnglogos.com/uploads/google-plus-png-logo/google-plus-iconpng-logo-17.png',
                      socialapp: 'Google',
                      socialcolor: Colors.purple,
                    )
                  ],
                ),
                SizedBox(height: 30),
                // textfield 1
                LoginTextfield(
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 20,
                ),
                //textfield 2
                LoginTextfield(
                  hintText: 'Password',
                ),
                SizedBox(height: 20),
                //remember me forgt pass text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.3,
                          child: Checkbox(
                              side: BorderSide(
                                  style: BorderStyle.solid,
                                  color: Color(0xff1687a7),
                                  width: 2),
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                        ),
                        Text('Remember Me?',
                            style: GoogleFonts.lato(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1687a7)))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        'Forgot Password?',
                        style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                //log in button
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectCourse()));
                  }),
                  child: Container(
                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xff1687a7),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text('Log In',
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                  ),
                ),
                SizedBox(height: 80),
                //dont have an Account text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an Acoount?',
                      style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1687a7)),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUpPage();
                        }));
                      },
                      child: Text('Create Acoount',
                          style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
