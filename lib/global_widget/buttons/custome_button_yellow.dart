import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictandwin/resources/appColor/app_colors.dart';

class CustomeButtomYellow extends StatelessWidget {
  final String text;

  const CustomeButtomYellow({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.yellow, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 14),
      width: double.infinity,
      child: Text(text,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
    );
  }
}
