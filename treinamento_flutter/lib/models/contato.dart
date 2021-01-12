import 'package:uuid/uuid.dart';

class Contato {
  final String guid = Uuid().v1();
  String nome;
  String sobreNome;
  DateTime nascimento;
  int idade;
  int peso;
  String email;
  String telefone;

  Contato(
      {this.nome,
      this.nascimento,
      this.idade,
      this.peso,
      this.email,
      this.telefone
  });
}
