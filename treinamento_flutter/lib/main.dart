import 'package:flutter/material.dart';
import 'package:treinamento_flutter/home.dart';
import 'package:get_it/get_it.dart';
import 'package:treinamento_flutter/contatoservice.dart';
import 'contatoservice.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerSingleton<ContatoService>(ContatoService());
  ContatoService();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApp(),
    );
  }
}
