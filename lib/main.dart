import 'package:blackbird_books/controller/product_controller.dart';
import 'package:blackbird_books/controller/user_controller.dart';
import 'package:blackbird_books/telas/login/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserController()),
        ChangeNotifierProvider(create: (context) => ProductController()),
      ],
      child: MaterialApp(
        title: 'Ecommerce',
        home: Login(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 250, 222))
      ),
    );
  }
}

/*void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key})
      : super(
          home: Login(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: Color.fromARGB(255, 255, 250, 222)),
        );

  @override
  Widget build(BuildContext context) {
    return Multiprovider(providers: [
      ChangeNotifierProvider(create: (context) => UserController()),
      ChangeNotifierProvider(create: (context) => ProductController()),
    ]);
  }
}*/
