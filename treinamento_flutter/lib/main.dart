import 'package:flutter/material.dart';
import 'package:treinamento_flutter/contato.dart';
import 'package:treinamento_flutter/contatoservice.dart';
import 'package:treinamento_flutter/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApp(),
    );
  }
}
