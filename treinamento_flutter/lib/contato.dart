class Contato{
  String Guid;
  String nome;
  String sobreNome;
  DateTime nascimento = DateTime.now();
  int idade;
  int peso;
  String email;
  String telefone;

  Contato({this.nome, this.nascimento, this.idade, this.peso, this.email, this.telefone});
 
}