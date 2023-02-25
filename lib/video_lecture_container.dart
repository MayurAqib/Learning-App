// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoLecture extends StatelessWidget {
  final videoNetworkAdrress;
  final String videoSubject;
  final String videoTopic;
  final String videoDuration;
  const VideoLecture(
      {super.key,
      required this.videoDuration,
      required this.videoNetworkAdrress,
      required this.videoSubject,
      required this.videoTopic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            height: 230,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(videoNetworkAdrress),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(blurRadius: 1, color: Color(0xff1687a7)),
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(height: 10),
                  //text  Subject name
                  Text(videoSubject,
                      style: GoogleFonts.montserrat(
                          color: Color(0xff1687a7), fontSize: 16)),
                  SizedBox(height: 30),
                  //text subject purpose
                  Text(
                    videoTopic,
                    style: GoogleFonts.montserrat(
                        color: Color(0xff1687a7),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  //text video duration
                  Text(videoDuration,
                      style: GoogleFonts.montserrat(
                          color: Color(0xff1687a7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
