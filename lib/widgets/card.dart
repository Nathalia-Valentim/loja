import 'package:blackbird_books/telas/telas_livros/tela.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildProductCard(String title, String subtitle, double price, String rating, String imageAsset, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Livro(
            title: title,
            subtitle: subtitle,
            imageAsset: imageAsset,
            price: price,
            rating: rating,
          ),
        ),
      );
    },
    child: Container(
      margin: const EdgeInsets.all(8),
      child: Container(
        width: 190,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 270,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                title,
                style: GoogleFonts.sono(
                  color: Color(0xFF2e2e2c), 
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                subtitle,
                style: GoogleFonts.sono(
                  color: Color(0xFF2e2e2c), 
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: GoogleFonts.sono(
                    color: Color(0xFF2e2e2c), 
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 32),
                Text(
                  rating,
                  style: GoogleFonts.sono(
                    color: Color(0xFF2e2e2c), 
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Color(0xFFEA9F31),
                  size: 18,
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}


Widget buildProductCard2(String title, String subtitle, double price, String rating, String imageAsset,  BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Livro(
            title: title,
            subtitle: subtitle,
            imageAsset: imageAsset,
            price: price,
            rating: rating,
          ),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230,
            width: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageAsset),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.sono(
                    color: Color(0xFF2e2e2c), 
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: GoogleFonts.sono(
                    color: Color(0xFF2e2e2c), 
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  "edição português",
                  style: GoogleFonts.sono(
                    color: Color(0xFF2e2e2c), 
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Frete Grátis",
                  style: GoogleFonts.sono(
                    color: Color(0xFF2e2e2c), 
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      '\$${price.toStringAsFixed(2)}',
                      style: GoogleFonts.sono(
                        color: Color(0xFF2e2e2c), 
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 32),
                    Text(
                      rating,
                      style: GoogleFonts.sono(
                        color: Color(0xFF2e2e2c), 
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xFFEA9F31),
                      size: 20,
                    )
                  ],
                ),
                const SizedBox(height: 4),
                const Icon(
                  Icons.favorite_border,
                  color: Color(0xFFE5543C),
                  size: 32,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

