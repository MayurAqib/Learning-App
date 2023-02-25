// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_app_ui/Pages/log_in.dart';
// import 'package:learning_app_ui/fb_google+.dart';
import 'package:learning_app_ui/login_textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
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
                                  builder: (context) => LogInPage()));
                        },
                        child: Icon(Icons.arrow_back_ios,
                            color: Color(0xff1687a7), size: 30)),
                    Padding(
                      padding: const EdgeInsets.only(left: 44),
                      child: Text('CREATE AN ACCOUNT',
                          textAlign: TextAlign.center,
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
                  'Learning App',
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1687a7)),
                ),
                SizedBox(height: 60),
                //enter the login details text
                Text(
                  'Enter the details to create your Account',
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

                // textfield 1
                LoginTextfield(
                  hintText: 'Enter Name',
                ),
                SizedBox(
                  height: 10,
                ),
                //textfield 2
                LoginTextfield(
                  hintText: 'Enter Email',
                ),
                SizedBox(
                  height: 10,
                ),
                //Textfield 3
                LoginTextfield(
                  hintText: 'Enter Mobile Number',
                ),
                SizedBox(
                  height: 10,
                ),

                //Textfield 4
                LoginTextfield(
                  hintText: 'Enter Password',
                ),
                SizedBox(
                  height: 10,
                ),
                //textfield 5
                LoginTextfield(
                  hintText: 'Confirm Password',
                ),

                SizedBox(height: 40),
                //remember me forgt pass text

                //create account button
                GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogInPage()));
                  }),
                  child: Container(
                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xff1687a7),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text('Create Account',
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
