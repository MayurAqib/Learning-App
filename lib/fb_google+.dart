// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names, file_names

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialLogInIcon extends StatelessWidget {
  final socialimage;
  final String socialapp;
  final socialcolor;

  const SocialLogInIcon(
      {super.key,
      required this.socialimage,
      required this.socialapp,
      required this.socialcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: socialcolor,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Image(
            image: NetworkImage(socialimage),
            height: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            socialapp,
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
