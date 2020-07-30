import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Passos",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Pessoas: 0",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          "Pode Entrar: 0",
          style: TextStyle(
              color: Colors.black, fontStyle: FontStyle.italic, fontSize: 30.0),
        )
      ],
    ),
  ));
}
