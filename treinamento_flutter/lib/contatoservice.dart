import 'dart:math';

import 'package:treinamento_flutter/contato.dart';

class ContatoService {
  int max = 50;
  var random = Random();
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
  int nasc(int min, int max, int) => min + random.nextInt(1990 - 2000);

  List<Contato> userList = [];
  List<Contato> getAll() {
    for (int i = 0; i < max; i++) {
      var primeiroNome = nome[random.nextInt(nome.length)];
      var sobrenome = sobreNome[random.nextInt(sobreNome.length)];

      var idades = random.nextInt(90);
      var kg = random.nextInt(100);
      Contato usuario = new Contato(
        nome: '$primeiroNome $sobrenome',
        idade: idades,
        peso: kg,
        telefone: telefones[random.nextInt(telefones.length)],
        email: emails[random.nextInt(emails.length)],
        //nascimento: nasc[random.nextInt(nasc.length)],
      );
      userList.add(usuario);
    }
    return userList;
  }
}
