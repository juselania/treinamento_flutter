import 'dart:math';

import 'package:treinamento_flutter/contato.dart';

class ContatoService {
  int max = 50;
  var nome = ['Mário', 'Luigi', 'Wario', 'Peach', 'Filipe'];
  var sobreNome = ['Dias', 'Fernandes', 'Castro', 'Souza', 'Deschamps'];
  var telefones = ['71 12345678', '71 11112222', '71 33334444', '71 55556666'];
  var emails = [
    'teste123@gmail.com',
    'dartteste123@gmail.com',
    'umemailqualquer@gmail.com',
    'issoesoumemail@gmail.com',
    "luigi7878@outlook.com",
    "peach_d2.com.br",
    "mario.sd8@outlook.com",
    "wario@gmail.com.br",
    "nick_32@gmail.com",
    "jannepereira@gmail.com",
    "karaden@gmail.com",
    "heloiza_89@gmail.com",
    "flilipedsh@outlook.com.br",
  ];
  var nasc = [
    DateTime.now(),
    DateTime.now(),
    DateTime.now(),
    DateTime.now(),
    DateTime.now(),
  ];

  var idade;
  var peso;

  List<Contato> userList = [];
  List<Contato> getAll() {
    for (int i = 0; i < max; i++) {
      var nomeCompleto = nome[Random().nextInt(nome.length)] +
          ' ' +
          sobreNome[Random().nextInt(sobreNome.length)];
          var idades = idade[Random().nextInt(idade)];
          var kg = peso[Random().nextInt(peso)];
      Contato usuario = new Contato(
        nome: nomeCompleto,
        idade: idades,
        peso: kg,
        telefone: telefones[Random().nextInt(telefones.length)],
        email: emails[Random().nextInt(emails.length)],
        nascimento: nasc[Random().nextInt(nasc.length)],
      );
      userList.add(usuario);
    }
    return userList;
  }
}