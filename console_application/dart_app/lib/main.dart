import 'package:dart_app/Cliente.dart';
import 'package:dart_app/Item_Pedido.dart';
import 'package:dart_app/Pedido.dart';
import 'package:dart_app/Produto.dart';

void main(){
  print('hello world');

  Cliente cliente = Cliente(
    id: 1,
    nome: 'Gustavo',
    cpf:"123.456.789.987",
    telefone: '(84) 99999-9999',
  );

  Cliente cliente2 = Cliente(
    id: 2,
    nome: 'Gustavo',
    cpf:"123.456.789.987",
  );

   Produto produto = Produto(
    id:1,
    nome: 'Produto 1',
    preco:10
   );
    
    produto.setDesconto = 10;
    
  //cliente
  print(' Cliente: ${cliente.id}');
  print(' Nome: ${cliente.nome}');
  print(' CPF: ${cliente.cpf}');
  print(' Telefone: ${cliente.telefone?.length}');
  print(' Telefone: ${cliente2.telefone?.length}'); //usar '?'
  //permite que caso o valor nao exista vai ser retornado null, caso exista vai ser retornado o valor do atributo length

  //produto
  print(' Produto: ${produto.id}');
  print(' Nome: ${produto.nome}');
  print(' Preço: ${produto.preco}');
  print(' Preco com desconto: ${produto.precoComDesconto}');


  Pedido pedido = Pedido(
    cliente: Cliente(
      id: 1,
      nome: 'Gustavo',
      cpf:"123.456.789.987",
      telefone: '(84) 99999-9999',
    ),
    data: DateTime.now(),
    itens: [
      ItemPedido(
        id:1,
        produto: Produto(
          id: 1,
          nome: 'Produto 1',
          preco: 102,
        ),
        quantidade: 2,
      ),
      ItemPedido(
        id:2,
        produto: Produto(
          id: 2,
          nome: 'Produto 2',
          preco: 20000,
        ),
        quantidade: 1,
      ),
    ],      
  );
}