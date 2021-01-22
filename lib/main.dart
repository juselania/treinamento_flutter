import 'package:flutter/material.dart';
import 'package:treinamento_flutter/home.dart';
import 'package:get_it/get_it.dart';
import 'service_locator.dart';

void main() {
  setupLocator();
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
