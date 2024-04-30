import 'package:loja/model/user_model.dart';

class ListaDoUsuario {
  static List<User> user = [
    User(email: 'a', senha: 'a', nome: 'a', confirmar: 'a') //0
  ];

  static List<User> getterUsuarios() {
    return user;
  }
}