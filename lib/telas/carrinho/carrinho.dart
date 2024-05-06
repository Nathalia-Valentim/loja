import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaCarrinho extends StatefulWidget {
  final List<Map<String, dynamic>> cartItems;
  
  const TelaCarrinho({Key? key, required this.cartItems}) : super(key: key);

  @override
  State<TelaCarrinho> createState() => _TelaCarrinhoState();
}

class _TelaCarrinhoState extends State<TelaCarrinho> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Image.asset('/logoescrita.png'),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'Carrinho', 
                style: GoogleFonts.sono(
                  color: Color(0xFF2e2e2c), 
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(24, 32, 24, 32),
        child: Center(
        ),
      ),
    );
  }
}
