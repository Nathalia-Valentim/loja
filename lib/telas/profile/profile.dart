import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({Key? key}) : super(key: key);

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('/perfil.jpg'),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Luis Otávio',
                          style: TextStyle(color: Color(0xFF2e2e2c), fontSize: 24),
                        ),
                        subtitle: Text(
                          'tavinholindodalau@gmail.com',
                          style: TextStyle(color: Color(0xFF2e2e2c), fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Editar perfil',
                      style: GoogleFonts.sono(
                        color: Colors.white, 
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                      )
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFBFAE5A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size(400, 50), //(largura, altura)
                    ),
                  ),
                ),
                SizedBox(height: 65),
                const Text(
                  'Minha Conta',
                  style: TextStyle(
                    color: Color(0xFF2e2e2c),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.lock, color: Color(0xFF2e2e2c)),
                    SizedBox(width: 20),
                    Text(
                      'Alterar Senha',
                      style: TextStyle(color: Color(0xFF2e2e2c), fontSize: 18),
                    ),
                  ],
                ),
                const Divider(color: Color(0xFFBFAE5A)),
                SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.help, color: Color(0xFF2e2e2c)),
                    SizedBox(width: 10),
                    Text(
                      'Notificações',
                      style: TextStyle(color: Color(0xFF2e2e2c), fontSize: 18),
                    ),
                  ],
                ),
                   const Divider(color: Color(0xFFBFAE5A)),

                 SizedBox(height: 50),
                  const Text(
                  'Central de ajuda',
                  style: TextStyle(
                    color: Color(0xFF2e2e2c),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                   ),
                  ),
                  SizedBox(height: 20),
                 
                  const Row(
                  children: [
                    Icon(Icons.help, color: Color(0xFF2e2e2c)),
                    SizedBox(width: 10),
                    Text(
                      'Suporte- perguntas frequentes',
                      style: TextStyle(color: Color(0xFF2e2e2c), fontSize: 18),
                    ),
                  ],
                ),
                 const Divider(color: Color(0xFFBFAE5A)),
                 SizedBox(height: 50),
                  const Text(
                  'Privacidade',
                  style: TextStyle(
                    color: Color(0xFF2e2e2c),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                   ),
                  ),
                 
                  SizedBox(height: 20),
                  const Row(
                  children: [
                    Icon(Icons.article, color: Color(0xFF2e2e2c)),
                    SizedBox(width: 10),
                    Text(
                      'Termos e Políticas',
                      style: TextStyle(color: Color(0xFF2e2e2c), fontSize: 18),
                    ),
                  ],
                ),
                 const Divider(color: Color(0xFFBFAE5A)),
                   SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sair da conta',
                      style: GoogleFonts.sono(
                        color: Colors.white, 
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                      )
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE5543C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size(400, 65), //(largura, altura)
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
