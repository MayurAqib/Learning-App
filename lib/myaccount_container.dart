import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountText extends StatelessWidget {
  final String myAccountContainerText;
  const MyAccountText({super.key, required this.myAccountContainerText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          myAccountContainerText,
          style: GoogleFonts.montserrat(
              color: const Color(0xff1687a7),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          color: Color(0xff1687a7),
        )
      ]),
    );
  }
}
