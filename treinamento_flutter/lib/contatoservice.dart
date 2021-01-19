import 'dart:math';
import 'models/contato.dart';

class ContatoService {
  final int max = 50;
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

  int numeroAleatorio(int min, int max) {
    return min + random.nextInt(max - min);
  }

  List<Contato> userList = [];
  List<Contato> getAll() {
    for (int i = 0; i < max; i++) {
      var primeiroNome = nome[random.nextInt(nome.length)];
      var sobrenome = sobreNome[random.nextInt(sobreNome.length)];
      DateTime aniversario = new DateTime(numeroAleatorio(1500, 2020),
          numeroAleatorio(1, 12), numeroAleatorio(1, 30));
      var idades = DateTime.now().year - aniversario.year;
      var kg = numeroAleatorio(24, 190);

      Contato usuario = Contato(
        nome: '$primeiroNome $sobrenome',
        nascimento: aniversario,
        idade: idades,
        peso: kg,
        telefone: telefones[random.nextInt(telefones.length)],
        email: emails[random.nextInt(emails.length)],
      );
      userList.add(usuario);
    }
    return userList;
  }
}
