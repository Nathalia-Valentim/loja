import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> titles = <String>[
  'Autores',
  'Livros',
];

class TelaFavoritos extends StatefulWidget {
  const TelaFavoritos({Key? key}) : super(key: key);

  @override
  State<TelaFavoritos> createState() => _TelaFavoritosState();
}

class _TelaFavoritosState extends State<TelaFavoritos> {
  @override
  Widget build(BuildContext context) {
    const int tabsCount = 2;

    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Favoritos', 
            style: GoogleFonts.sono(
              color: Color(0xFF2e2e2c), 
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.transparent,
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          scrolledUnderElevation: 4.0,
          shadowColor: Theme.of(context).shadowColor,
          bottom: TabBar(
            indicatorColor: Color(0xFF2e2e2c),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Color(0xFF2e2e2c),
            unselectedLabelColor: Color(0xFF2e2e2c),
            tabs: <Widget>[
              Tab(
                child: Text(
                  titles[0], 
                  style: GoogleFonts.sono(
                    color: Color(0xFF2e2e2c), 
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  titles[1], 
                  style: GoogleFonts.sono(
                    color: Color(0xFF2e2e2c), 
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center( 
              child: SingleChildScrollView( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Sua lista está vazia',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sono(
                          color: Color(0xFF2e2e2c), 
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                      'Adicione autores aos seus favoritos',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sono(
                          color: Color(0xFF2e2e2c), 
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center( 
              child: SingleChildScrollView( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Nenhum livro foi favoritado',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sono(
                          color: Color(0xFF2e2e2c), 
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
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