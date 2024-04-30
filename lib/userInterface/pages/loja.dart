import 'package:flutter/material.dart';
import 'package:loja/userInterface/widgets/card.dart';
import 'package:loja/userInterface/widgets/container.dart';
import 'package:loja/userInterface/widgets/destaque.dart';
import 'package:loja/userInterface/widgets/informacoes.dart';
import 'package:loja/userInterface/widgets/search.dart';
//import 'package:google_fonts/google_fonts.dart';

List<Map<String, String>> items = [
  {"img": "assets/iconeFesta.png", "text": "Baladas"},
  {"img": "assets/iconeSport.png", "text": "Esportes"},
  {"img": "assets/iconeComida.png", "text": "Gastronomia"},
  {"img": "assets/iconeComedia.png", "text": "Comédia"},
  {"img": "assets/iconeTecn.png", "text": "Tecnologia"},
];

class Loja extends StatefulWidget {
  const Loja({Key? key, required index}) : super(key: key);

  @override
  State<Loja> createState() => _LojaState();
}

class _LojaState extends State<Loja> {
  final valor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: 25),
            SearchTop(),
            SizedBox(height: 20),
            verMais(items,
                title: "Mais de 1.000 Eventos.",
                subtitle: "Eleve suas experiências a novas alturas."),
            generoContainer(items),
            destaque(title: 'Destaques'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Maratona Ciclismo', 'assets/ciclismo.png'),
                    buildProductCard('Cinema drive-in', 'assets/drive_thru.png'),
                    buildProductCard('UNIVERSO FIGHT ', 'assets/luta.png'),
                    buildProductCard('15° Piquenique', 'assets/piquenique.png'),
                    buildProductCard('Lady Marmalade', 'assets/cabaret.png'),
                    buildProductCard('Happy Hour', 'assets/postHappyHour.png'),
                    buildProductCard('Bar da Cachaça', 'assets/bebida.png'),
                  ],
                ),
              ),
            ),
            destaque(title: 'Esportes'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard( 'NBB 2023', 'assets/postBasqueteUniversitario.png'),
                    buildProductCard('Copa de Beach Tênis', 'assets/postBeachTennis.png'),
                    buildProductCard( 'Campeonato Hipismo', 'assets/postCorridaCavalo.png'),
                    buildProductCard('Skate Festival', 'assets/postSkateFestival.png'),
                    buildProductCard('Torneio de Golf', 'assets/postTorneioGolf.png'),
                    buildProductCard('La Liga Vôlei de Praia', 'assets/postVoleiPraia.png'),
                  ],
                ),
              ),
            ),
            destaque(title: 'Cultural'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Festival de Karaokê', 'assets/postKaraoke.png'),
                    buildProductCard('Expo Dia da Consc. Negra','assets/postConscienciaNegra.png'),
                    buildProductCard('Exposição de Artes', 'assets/postBienalArtes.png'),
                    buildProductCard('Competições Das Bruxas', 'assets/posDiaDasBruxas.png'),
                    buildProductCard('Festival de Festa Junina', 'assets/postFestaJunina.png'),
                    buildProductCard('Festival do Morango', 'assets/postFestivalMorango.png'),
                    buildProductCard('Folclore Brasileiro', 'assets/postBumbaMeuBoi.png'),
                    buildProductCard('Evento Oktoberfest', 'assets/postOktoberfest.png'),
                  ],
                ),
              ),
            ),
            destaque(title: 'Shows'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Festa Anos 2000', 'assets/postAnos2000.png'),
                    buildProductCard('Pagode para Todos', 'assets/postSambaAlmeida.png'),
                    buildProductCard('O Baile é Delas', 'assets/postBaileDelas.png'),
                    buildProductCard('Festival do Rock', 'assets/postDiaDoRock.png'),
                    buildProductCard('Festa Neon', 'assets/postFestaNeon.png'),
                    buildProductCard('Festival Indie Rock', 'assets/postFestivalMusica.png'),
                    buildProductCard('Rave do Futuro', 'assets/postNeonPartyRave.png'),
                    buildProductCard('Summer Fest', 'assets/postSummerFest.png'),
                    buildProductCard('Baile Funk', 'assets/potsBaileFunk.png'),
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

