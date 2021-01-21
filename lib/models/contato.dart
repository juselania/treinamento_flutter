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

  String get inicial {
  String iniciais = nome.split(' ').map((e) => e.substring(0,1)).join('').substring(0,2).toUpperCase();
    return iniciais;
  }

  Contato(
      {this.nome,
      this.nascimento,
      this.idade,
      this.peso,
      this.email,
      this.telefone});
}
