import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildProductCard(String title, String imageAsset) {
  return Container(
    width: 200,
    margin: const EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageAsset),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.sono(
            color: Color(0xFF2e2e2c), 
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}