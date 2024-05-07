import 'package:blackbird_books/model/product_model.dart';

class User {
  String email;
  String senha;
  String nome;
  List<ProductModel> products = [];
  List<ProductModel> favorites = [];

  User({required this.email, required this.senha, required this.nome, required String confirmar});

  void addProduct(ProductModel product) {
    products.add(product);
  }

  void addFavorite(ProductModel product) {
    if (!favorites.contains(product)) {
      favorites.add(product);
    }
  }

  @override
  String toString(){
    return "nome: $nome, senha: $senha, email: $email";
  }
}