import 'package:dart_app/Produto.dart';

class ItemPedido{
  int id;
  Produto produto;
  int quantidade;
  double preco;

  ItemPedido({
    required this.id,
    required this.produto,
    required this.quantidade,
    double? preco
  }) : preco = preco ?? produto.precoComDesconto;


  double get precoTotal{
    return preco * quantidade;
  }
}