class Cliente{
  int id;
  String nome;
  String cpf;
  String? telefone;


  Cliente({
    required this.id,
    required this.nome,
    required this.cpf,
    this.telefone,
  });
}