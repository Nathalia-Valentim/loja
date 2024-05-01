import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

Widget bottomNavigationBar(int itemSelecionado, Function(int) nextStation) {
  return CurvedNavigationBar(
    backgroundColor: Colors.transparent,
    color: Colors.transparent, // cor do fundo
    buttonBackgroundColor: Colors.blue, // cor de fundo dos botões (itens)
    height: 75, // altura da CurvedNavigationBar
    index: itemSelecionado,
    items: const <Widget>[
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 35, color: Colors.white),
          Padding(
             padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Home', style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.map_sharp, size: 35, color: Colors.white),
          Padding(
             padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Mapa', style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.favorite, size: 35, color: Colors.white),
          Padding(
             padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Gostei', style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.person, size: 35, color: Colors.white),
          Padding(
             padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Perfil', style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.wallet, size: 35, color: Colors.white),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Carteira', style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ],
      ),
    ],
    onTap: nextStation,
  );
}
