import 'package:dart_app/Cliente.dart';
import 'package:dart_app/Item_Pedido.dart';

class Pedido {
  Cliente cliente;
  DateTime data;
  List<ItemPedido> itens;

  Pedido({
    required this.cliente,
    required this.data,
    required this.itens,
  });

  double get valorTotal{
    return itens.fold(0, (total, item) => total + item.precoTotal);
  }
  
   
}