import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text customHeading32(String text, Color color) {
  return Text(text,
      style: GoogleFonts.lato(
          fontSize: 32, fontWeight: FontWeight.bold, color: color));
}

Text customHeading1(String text, Color color) {
  return Text(text,
      style: GoogleFonts.lato(
          fontSize: 24, fontWeight: FontWeight.bold, color: color));
}

Text customSubHeading1(String text, Color color) {
  return Text(text,
      style: GoogleFonts.lato(
          fontSize: 14, fontWeight: FontWeight.bold, color: color));
}

Text customDescription1(String text, Color color) {
  return Text(text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.lato(
          fontSize: 14, fontWeight: FontWeight.normal, color: color));
}
