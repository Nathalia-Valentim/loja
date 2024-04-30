import 'package:flutter/material.dart';

Widget SearchTop (){
  return Container(
    padding: const EdgeInsets.all(8),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
      child: TextFormField(
        style: const TextStyle(color: Color(0xFF2e2e2c)),
        decoration: const InputDecoration(
          hintText: 'Pesquisar eventos',
          hintStyle: TextStyle(color: Color(0xFF2e2e2c)),        
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(color: Color(0xFF2e2e2c)),
          ),
          contentPadding: EdgeInsets.all(4),
          prefixIcon: Icon(Icons.search, color: Color(0xFF2e2e2c)),
          filled: true,
          fillColor: Colors.transparent,
        ),
      ),
    ),
  );

}