import 'package:blackbird_books/telas/carrinho/carrinho.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<Map<String, dynamic>> cartItems = [];

class Livro extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String rating;
  final String imageAsset;
  

  Livro({required this.title, required this.subtitle, required this.price, required this.rating, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('/logoescrita.png', width: 320),
          ],
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF2e2e2c), weight: 24),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Container(
                width: double.infinity,
                height: 540,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFE5543C),
                  image: DecorationImage(
                    image: AssetImage(imageAsset),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                title,
                style: GoogleFonts.sono(
                  color: Color(0xFF2e2e2c), 
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: GoogleFonts.sono(
                  color: Color(0xFF2e2e2c), 
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Capa comum: ${price}',
                style: GoogleFonts.sono(
                  color: Color(0xFF2e2e2c), 
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.public, color: Color(0xFFBFAE5A), size: 24),
                  SizedBox(width: 8),
                  Text(
                    'Edição em Português',
                    style: GoogleFonts.sono(
                      color: Color(0xFF2e2e2c), 
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    'Avaliação: ${rating}',
                    style: GoogleFonts.sono(
                      color: Color(0xFF2e2e2c), 
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                   Icon(Icons.star, color: Color(0xFFEA9F31), size: 20),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    'páginas +',
                    style: GoogleFonts.sono(
                      color: Color(0xFF2e2e2c), 
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 32),
                  Text(
                    'lançamento +',
                    style: GoogleFonts.sono(
                      color: Color(0xFF2e2e2c), 
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                 Text(
                    'editora +',
                    style: GoogleFonts.sono(
                      color: Color(0xFF2e2e2c), 
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 32),
                  Text(
                    'arquivo +',
                    style: GoogleFonts.sono(
                      color: Color(0xFF2e2e2c), 
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                'Sinopse >',
                style: GoogleFonts.sono(
                  color: Color(0xFF2e2e2c), 
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Favoritar',
                  style: GoogleFonts.sono(
                    color: Colors.white, 
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFF2e2e2c),
                  backgroundColor: Color(0xFFE5543C),
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TelaCarrinho(cartItems: cartItems)),
                  );
                },
                child: Text(
                  'Adicionar ao carrinho',
                  style: GoogleFonts.sono(
                    color: Colors.white, 
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFF2e2e2c),
                  backgroundColor: Color(0xFFBFAE5A),
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}