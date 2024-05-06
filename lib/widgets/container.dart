import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget generoContainer(List<Map<String, String>> items) {
  return Container(
    height: 80,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFe5543c),
                      borderRadius: BorderRadius.circular(8), // define o raio da borda
                      
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                      child: Text(
                        item['text']!,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sono(
                          color: Colors.white, 
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
