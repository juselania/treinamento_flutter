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
    var iniciais = nome.split(' ');
    for (var i = 0; i < iniciais.length; i++) {
      var palavra = iniciais[i];
      print(palavra.substring(0, 1));
      return nome[0]+sobreNome[0];
    }
  }
  

  Contato(
      {this.nome,
      this.nascimento,
      this.idade,
      this.peso,
      this.email,
      this.telefone});
}
