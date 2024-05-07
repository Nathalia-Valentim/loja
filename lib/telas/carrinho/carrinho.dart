import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaCarrinho extends StatefulWidget {
  final List<Map<String, dynamic>> cartItems;
  
  const TelaCarrinho({Key? key, required this.cartItems}) : super(key: key);

  @override
  State<TelaCarrinho> createState() => _TelaCarrinhoState();
}

class _TelaCarrinhoState extends State<TelaCarrinho> {
  double total = 0;

  @override
  void initState() {
    super.initState();
    _calculateTotal();
  }

  void _calculateTotal() {
    setState(() {
      total = 0;
      for (var item in widget.cartItems) {
        total += item['price'];
      }
    });
  }
  
  void _calculateTotalMenos() {
    setState(() {
      total = 0;
      for (var item in widget.cartItems) {
        total -= item['price'];
      }
    });
  }

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
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {},
                  background: Container(
                    color: Colors.red,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(Icons.delete, color: Colors.black),

                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Row(
                      children: [
                        Container(
                          width:100,
                          height: 140,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(widget.cartItems[index]['imageAsset']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.cartItems[index]['title'],
                                style: GoogleFonts.sono(
                                  color: Color(0xFF2e2e2c), 
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '\$${widget.cartItems[index]['price']}',
                                style: GoogleFonts.sono(
                                  color: Color(0xFF2e2e2c), 
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Você também pode gostar',
              style: GoogleFonts.sono(
                color: Color(0xFF2e2e2c), 
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 200, 
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildProductCard('Verity                         `', 'Colleen Hoover', 34.50, '4,7', '/maisvendidos0.jpg', context),
                    buildProductCard('Uma família feliz', 'Raphael Montes', 43.90, '4,3', '/maisvendidos1.jpg', context),
                    buildProductCard('A maldição do ex', 'Rachel Hawkins', 21.30, '4,5', '/maisvendidos2.jpg', context),
                    buildProductCard('O principe', 'Nicolau Maquiavel', 19.90, '4,7', '/maisvendidos3.jpg', context),
                    buildProductCard('Convite para um homicídio', 'Agatha Christie', 40.15, '4,9', '/maisvendidos4.jpg', context),
                    buildProductCard('O Colecionador                 `', 'John Fowles', 50.80, '4,3', '/maisvendidos5.jpg', context),
                    buildProductCard('Nevernight                     `', 'Colleen Hoover', 70.21, '4,7', '/maisvendidos6.jpg', context),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage(index: 0)),
                    );*/
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Adicionar mais itens'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 255, 132, 189),
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Continuar'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.pinkAccent,
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Text(
              'Total: \$${total.toStringAsFixed(2)}',
              textAlign: TextAlign.right,
              style: GoogleFonts.sono(
                  color: Color(0xFF2e2e2c), 
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
            ),
          ),
        ],
      )
    );
  }

  Widget buildProductCard(String title, String subtitle, double price, String rating, String imageAsset,  BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Container(
        width: 150,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imageAsset),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.sono(
                      color: Colors.white, 
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: GoogleFonts.sono(
                      color: Colors.white, 
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
