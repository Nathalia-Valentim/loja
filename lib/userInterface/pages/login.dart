import 'package:flutter/material.dart';
import 'package:loja/controller/user_controller.dart';
import 'package:loja/userInterface/pages/cadastro.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  UserController userController = UserController();

  final nomeController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('/preto.png', width: 370),
                const SizedBox(height: 32),
                Image.asset('/logo.png', width: 300),
                const SizedBox(height: 32),
                TextFormField(
                  cursorColor: Color(0xFF2e2e2c),
                  controller: nomeController,
                  decoration: const InputDecoration(
                    hintText: 'E-mail',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  cursorColor: Color(0xFF2e2e2c),
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Senha',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2e2e2c))),
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    userController.login(
                      context, nomeController.text, passwordController.text
                    );
                  },
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFFE5543C),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Cadastro()),
                    );
                  },
                  child: const Text(
                    'Não tem conta? Cadastre-se',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xFFe5543c),
                      decorationColor: Color(0xFFe5543c),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text('Ou entre com'),
                const SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: IconButton(
                        icon: Image.asset('/apple.png', width: 24),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 4, left: 12, right: 12),
                      child: IconButton(
                        icon: Image.asset('/gmail.png', width: 24),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: IconButton(
                        icon: Image.asset('/outlook.png', width: 24),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
