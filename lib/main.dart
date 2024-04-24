import 'package:flutter/material.dart';
import 'package:loja/userInterface/pages/login.dart';

void main() => runApp( MyApp());

class MyApp extends MaterialApp {
   MyApp({super.key}) : super(
    home: Login(), 
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(127, 214, 198, 96)
    ),
  );
}

