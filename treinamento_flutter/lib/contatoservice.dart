import 'dart:math';
import 'package:treinamento_flutter/contato.dart';
import 'package:uuid/uuid.dart';

main() {
  ContatoService contatList = ContatoService();
  contatList.getAll();
}

class ContatoService {
  int max = 50;
  var uuid = Uuid();
  var nome = [
    'Mário',
    'Luigi',
    'Wario',
    'Peach',
    'Kara',
    'Martha',
    'Filipe',
    'Janne',
    'Heloiza',
    'Nick'
  ];
  var sobreNome = [
    'Dias',
    'Fernandes',
    'Castro',
    'Souza',
    ' Arruda',
    'Borbasa',
    'Gomes',
    'Cordeiro',
    'Medeiros',
    'Valença'
  ];
  DateTime dataNasc = DateTime.now();
  var idade = [20, 15, 18, 35, 25, 19, 22, 45, 23, 34];
  var peso = [55, 78, 90, 98, 110, 50, 45, 52, 75, 62, 35];
  var email = [
    "luigi7878@outlook.com",
    "peach_d2.com.br",
    "mario.sd8@outlook.com",
    "wario@gmail.com.br",
    "nick_32@gmail.com",
    "jannepereira@gmail.com",
    "karaden@gmail.com",
    "heloiza_89@gmail.com",
    "flilipedsh@outlook.com.br"
  ];
  var telefones = ['14 98799788', '71 11112222', '11 33334444', '81 55556666'];
  List<Contato> userList = [];

  List<Contato> getAll() {
    for (int i = 0; i < max; i++) {
      Contato usuario = Contato(
        nome: nome[Random().nextInt(nome.length)] + " " + 
            sobreNome[Random().nextInt(sobreNome.length)],
        idade: idade[(Random().nextInt(idade.length))],
        peso: peso[Random().nextInt(peso.length)],
        email: email[(Random().nextInt(email.length))],
        telefone: telefones[Random().nextInt(telefones.length)],
      );
      userList.add(usuario);
    }
    return userList;
  }
}
