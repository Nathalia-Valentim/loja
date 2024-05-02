import 'package:blackbird_books/widgets/card.dart';
import 'package:blackbird_books/widgets/container.dart';
import 'package:blackbird_books/widgets/destaque.dart';
import 'package:blackbird_books/widgets/search.dart';
import 'package:flutter/material.dart';

List<Map<String, String>> items = [
  {"text": "Fantasia"},
  {"text": "Romance"},
  {"text": "Thriller"},
  {"text": "Ficção"},
  {"text": "Bruxaria"},
  {"text": "Fantasia Histórica"},
  {"text": "  +  "}
];

class TelaInicio extends StatefulWidget {
  const TelaInicio({Key? key, required index}) : super(key: key);

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  final valor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height:8),
          Image.asset('/logoescrita.png', width: 400),
          generoContainer(items),
          SearchTop(),
          destaque(title: 'Destaques'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Maratona Ciclismo', '/logo.png'),
                    buildProductCard('Cinema drive-in', '/logo.png'),
                    buildProductCard('UNIVERSO FIGHT ', '/logo.png'),
                    buildProductCard('15° Piquenique', '/logo.png'),
                    buildProductCard('Lady Marmalade', '/logo.png'),
                    buildProductCard('Happy Hour', '/logo.png'),
                    buildProductCard('Bar da Cachaça', '/logo.png'),
                  ],
                ),
              ),
            ),  
          ],
        ),
      ),
    );
  }
}

