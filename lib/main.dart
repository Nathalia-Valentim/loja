import 'package:blackbird_books/telas/login/login.dart';
import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends MaterialApp {
   MyApp({super.key}) : super(
    home: Login(), 
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 255, 250, 222)
    ),
  );
}