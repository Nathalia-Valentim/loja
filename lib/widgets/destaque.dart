import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget destaque({String title = "Título"}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
    child: Align(
      alignment: Alignment.centerLeft, 
      child: Text(
        title,
        style: GoogleFonts.sono(
          color: Color(0xFF2e2e2c),
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
