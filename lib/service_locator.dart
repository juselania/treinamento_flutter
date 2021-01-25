import 'package:get_it/get_it.dart';
import 'package:treinamento_flutter/contatoservice.dart';


GetIt servicelocator = GetIt.instance;

void setupLocator() {
  servicelocator.registerSingleton<ContatoService>(ContatoService());
}
