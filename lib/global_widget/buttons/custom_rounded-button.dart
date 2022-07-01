import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeRoundedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  const CustomeRoundedButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: Text(text,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontSize: 14, fontWeight: FontWeight.bold, color: textColor)),
    );
  }
}
