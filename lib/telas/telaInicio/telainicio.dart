// ignore: file_names
import 'package:blackbird_books/widgets/card.dart';
import 'package:blackbird_books/widgets/container.dart';
import 'package:blackbird_books/widgets/destaque.dart';
import 'package:blackbird_books/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Image.asset('/logoescrita.png', width: 400),
            generoContainer(items),
            SearchTop(),
            destaque(title: 'Mais Vendidos'),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 2),
              child: SizedBox(
                height: 420,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Verity                         `', 'Colleen Hoover', "R\$34.50", '4,7', '/maisvendidos0.jpg', context),
                    buildProductCard('Uma família feliz', 'Raphael Montes', 'R\$43.90', '4,3', '/maisvendidos1.jpg', context),
                    buildProductCard('A maldição do ex', 'Rachel Hawkins', "R\$21.30", '4,5', '/maisvendidos2.jpg', context),
                    buildProductCard('O principe', 'Nicolau Maquiavel', "R\$19.90", '4,7', '/maisvendidos3.jpg', context),
                    buildProductCard('Convite para um homicídio', 'Agatha Christie', "R\$40.15", '4,9', '/maisvendidos4.jpg', context),
                    buildProductCard('O Colecionador                 `', 'John Fowles', "R\$50.80", '4,3', '/maisvendidos5.jpg', context),
                    buildProductCard('Nevernight                     `', 'Colleen Hoover', "R\$70.21", '4,7', '/maisvendidos6.jpg', context),
                  ],
                ),
              ),
            ),
            destaque(title: 'Melhores para você'),
            Container(
              child: Column(
                children: [
                  buildProductCard2('A Noiva                      `', 'Ali Hazelwood', "R\$46.30", '4,6', '/melhorespara0.jpg', context),
                  const SizedBox(height: 24),
                  buildProductCard2('Judas                        `', 'J. R. R. Tolkien', 'R\$59.90', '4,8', '/melhorespara1.jpg', context),
                  const SizedBox(height: 24),
                  buildProductCard2('Sobre desistir               `', 'Adam Phillips', "R\$51.66", '4,5', '/melhorespara2.jpg', context),
                  const SizedBox(height: 24),
                  buildProductCard2('Leve minha alma              `', 'Harley Laroux', "R\$47.50", '4,6', '/melhorespara3.jpg', context),
                  const SizedBox(height: 24),
                  buildProductCard2('Box Tudo pelo jogo', 'Nora Sakavic', "R\$129.90", '4,7', '/melhorespara4.jpg', context),
                  const SizedBox(height: 24),
                  buildProductCard2('Fisgados                     `', 'Emily McIntire', "R\$43.39", '4,5', '/melhorespara5.jpg', context),
                  const SizedBox(height: 24),
                  buildProductCard2('Under Your Skin              `', 'Zoe X', "R\$48.00", '4,7', '/melhorespara6.jpg', context),
                  const SizedBox(height: 24),
                  buildProductCard2('A lista de convidados', 'Lucy Foley', "R\$49.28", '4,8', '/melhorespara7.jpg', context),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFFE5543C),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Ver Mais', 
                      style: GoogleFonts.sono(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

