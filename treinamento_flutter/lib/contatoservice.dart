import 'dart:math';
import 'package:treinamento_flutter/contato.dart';

main() {
  ContatoService contatList = ContatoService();
  contatList.getAll();
}

class ContatoService {
  List<Contato> getAll() {
    int max = 50;
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
      'Borba',
      'Gomes',
      'Cordeiro',
      'Medeiros',
      'Valença'
    ];
    var telefones = [
      '14 98799788',
      '71 11112222',
      '11 33334444',
      '81 55556666'
    ];
    List<Contato> userList = [];

    for (int i = 0; i < max; i++) {
      Contato usuario = Contato(
        nome: nome[Random().nextInt(nome.length)] +
            sobreNome[Random().nextInt(sobreNome.length)],
        telefone: telefones[Random().nextInt(telefones.length)],
      );
      userList.add(usuario);
    }
    return userList;
  }
}
