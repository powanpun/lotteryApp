import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';

class CustomeButtomGreen extends StatelessWidget {
  const CustomeButtomGreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.mainColor, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 14),
      width: double.infinity,
      child: Text("Enroll Now",
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
    );
  }
}
