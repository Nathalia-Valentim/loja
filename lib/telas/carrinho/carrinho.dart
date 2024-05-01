import 'package:flutter/material.dart';

class TelaCarteira extends StatefulWidget {
  const TelaCarteira({Key? key}) : super(key: key);

  @override
  State<TelaCarteira> createState() => _TelaCarteiraState();
}

class _TelaCarteiraState extends State<TelaCarteira> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Carteira', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text('Ingressos', style: TextStyle(color: Colors.white, fontSize:18)),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 5, 18, 27),
        toolbarHeight: 110.0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2),
          child: Row(
            children: [
              Container(
                color: Colors.blue,
                height: 2,
                width: 140,
              )
            ],
          )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromARGB(255, 5, 18, 27),
                ),
                width: double.infinity,
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: Image.asset(
                          'assets/postSummerFestCortada.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ), 
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Summer Fest',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '30 de Junho - 5 de Julho',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Ingresso',
                            style: TextStyle(color: Colors.white, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Colors.blue, width: 1)),
                          minimumSize: Size(400, 50), //(largura, altura)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
