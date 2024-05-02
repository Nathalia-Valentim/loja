
import 'package:blackbird_books/telas/carrinho/carrinho.dart';
import 'package:blackbird_books/telas/favoritos/favoritos.dart';
import 'package:blackbird_books/telas/profile/profile.dart';
import 'package:blackbird_books/telas/telaInicio/telainicio.dart';
import 'package:blackbird_books/widgets/navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required int index});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;
  //ir para o próximo item
  void nextStation(int posicao){
    setState(() {
      itemSelecionado = posicao;
    });
  }
  //lista de páginas
  List<Widget> telas = const [
    TelaInicio(index: null,),
    TelaFavoritos(),
    TelaCarteira(),
    TelaPerfil(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:telas.elementAt(itemSelecionado),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}