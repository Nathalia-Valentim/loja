import 'package:blackbird_books/controller/user_controller.dart';
import 'package:blackbird_books/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool _isChecked = false;
  UserController userController = UserController();

  final nomeController = TextEditingController();
  final emailController = TextEditingController(); // Adicionando controlador para o email
  final senhaController = TextEditingController();
  final senhaConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('/preto.png', width: 370),
                  const SizedBox(height: 16),
                  Image.asset('/logo.png', width: 300),
                  const SizedBox(height: 32),
                  TextFormField(
                    cursorColor: Color(0xFF2e2e2c),
                    style: GoogleFonts.sono(
                      color: Color(0xFF2e2e2c),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    controller: nomeController,
                    decoration: const InputDecoration(
                      hintText: 'Usuário',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    cursorColor: Color(0xFF2e2e2c),
                    style: GoogleFonts.sono(
                      color: Color(0xFF2e2e2c),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    controller: emailController, // Adicionando controlador para o email
                    keyboardType: TextInputType.emailAddress, // Tipo de teclado para email
                    decoration: const InputDecoration(
                      hintText: 'E-mail',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    cursorColor: Color(0xFF2e2e2c),
                    style: GoogleFonts.sono(
                      color: Color(0xFF2e2e2c),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    controller: senhaController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Senha',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    cursorColor: Color(0xFF2e2e2c),
                    style: GoogleFonts.sono(
                      color: Color(0xFF2e2e2c),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    controller: senhaConfirm,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Repita sua senha',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        activeColor: Color(0xFFbfae5a),
                      ),
                      Text(
                        'Aceito os termos e condições.',
                        style: GoogleFonts.sono(
                          color: Color(0xFF2e2e2c),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {
                      User user = User(
                        nome: nomeController.text,
                        email: emailController.text,
                        senha: senhaController.text,
                        confirmar: senhaConfirm.text
                      );
                      userController.cadastrar(context, user);
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Finalize seu cadastro',
                      style: GoogleFonts.sono(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFFE5543C),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
