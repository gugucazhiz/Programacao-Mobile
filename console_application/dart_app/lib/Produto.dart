class Produto{
  int id;
  String nome;
  int? preco;
  double desconto = 0;

  Produto({
    required this.id,
    required this.nome,
    this.preco
  });

  set setDesconto(double desconto){
    this.desconto = desconto;
  }

  double get precoComDesconto{
    return preco! - (preco! * desconto /100);
  }
}