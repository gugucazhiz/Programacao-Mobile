import 'package:dart_app/Cliente.dart';

void main(){
  print('hello world');

  Cliente cliente = Cliente(
    id: 1,
    nome: 'Gustavo',
    cpf:"123.456.789.987",
    telefone: '(84) 99999-9999',
  );

  Cliente cliente2 = Cliente(
    id: 1,
    nome: 'Gustavo',
    cpf:"123.456.789.987",
  );

  print(' Cliente: ${cliente.id}');
  print(' Nome: ${cliente.nome}');
  print(' CPF: ${cliente.cpf}');
  print(' Telefone: ${cliente.telefone?.length}');
  print(' Telefone: ${cliente2.telefone?.length}');

}