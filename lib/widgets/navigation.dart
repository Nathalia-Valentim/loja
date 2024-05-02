import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import 'package:google_fonts/google_fonts.dart';

Widget bottomNavigationBar(int itemSelecionado, Function(int) nextStation) {
  return CurvedNavigationBar(
    backgroundColor: Color.fromARGB(255, 253, 246, 208),
    color: Color(0xFFE5543C), // cor do fundo
    buttonBackgroundColor: Color(0xFFE5543C), // cor de fundo dos botões (itens)
    height: 56, // altura da CurvedNavigationBar
    index: itemSelecionado,
    items: const <Widget>[
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 32, color: Colors.white),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            /*child: Text(
              'Home', 
              style: GoogleFonts.sono(
                color: Color(0xFF2e2e2c),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),*/
          ),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.favorite, size: 32, color: Colors.white),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            /*child: Text(
              'Mapa', 
              style: GoogleFonts.sono(
                color: Color(0xFF2e2e2c),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),*/
          ),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.shopping_cart, size: 32, color: Colors.white),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            /*child: Text(
              'Gostei', 
              style: GoogleFonts.sono(
                color: Color(0xFF2e2e2c),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),*/
          ),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.person, size: 32, color: Colors.white),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            /*child: Text(
              'Perfil', 
              style: GoogleFonts.sono(
                color: Color(0xFF2e2e2c),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),*/
          ),
        ],
      ),
    ],
    onTap: nextStation,
  );
}
