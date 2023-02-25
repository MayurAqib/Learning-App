// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectClassListView extends StatelessWidget {
  final String selectClassListviewName;
  final selectClassListViewColor;
  const SelectClassListView(
      {super.key,
      required this.selectClassListviewName,
      required this.selectClassListViewColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 48,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: selectClassListViewColor),
        child: Center(
            child: Text(
          selectClassListviewName,
          style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
