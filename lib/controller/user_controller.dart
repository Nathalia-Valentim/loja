import 'package:blackbird_books/database/user_database.dart';
import 'package:blackbird_books/model/product_model.dart';
import 'package:blackbird_books/model/user_model.dart';
import 'package:blackbird_books/telas/homePage/homepage.dart';
import 'package:flutter/material.dart';

class UserController with ChangeNotifier{
  List<User> users = [
    User(email: "a", senha: "a", nome: "a", confirmar: "a")
  ];

  void addToCart(String userEmail, ProductModel product) {
    User? user = users.firstWhere((u) => u.email == userEmail);
    if (user.email.isNotEmpty) {
      user.products.add(product);
    }
  }

  void addFavorite(String userEmail, ProductModel product) {
    User? user = users.firstWhere((u) => u.email == userEmail);
    if (user.email.isNotEmpty) {
      if (!user.favorites.contains(product)) {
        user.favorites.add(product);
      }
    }
  }

  void cadastrar(context, User user){
  var result = ListaDoUsuario.user.where((item) => item.email == user.email);
    if (user.email.contains('@') && user.email.contains('.com')){
      print(ListaDoUsuario.user);
      ListaDoUsuario.user.add(user);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Color(0xFFbfae5a),
          content: Row(
            children: [
              Text('Cadastro concluído, faça o seu login!', style: TextStyle(fontSize: 16)),
            ],
          )
        )
      );
    }else if(result.isNotEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Color(0xFFE5543C),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('As senhas não coincidem, por favor, tente novamente', style: TextStyle(fontSize: 16))
            ],
          )
        )
      );
    }else if(result.isNotEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Color(0xFFE5543C),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Email já existente, tente inserir outro email ou fazer login', style: TextStyle(fontSize: 16)),
            ],
          )
        )
      );
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Color(0xFFE5543C),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tente inserir credencias válidas', style: TextStyle(fontSize: 16)),
            ],
          )
        )  
      );
    }
  }

  void login(BuildContext context, String email, String senha){
    print(ListaDoUsuario.user);
    var result = ListaDoUsuario.user.where((item) => item.email == email && item.senha == senha);
    var index = ListaDoUsuario.user.indexWhere((item) => item.email == email);
    if(result.isNotEmpty){
      Navigator.pushAndRemoveUntil(
        context, 
        MaterialPageRoute(
          builder: (_)=> HomePage(index: index)
        ), 
        (route) => false, 
      );
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Color(0xFFE5543C),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tente inserir credencias válidas', style: TextStyle(fontSize: 16)),
            ],
          )
        )
      );
    }
  }
} 

