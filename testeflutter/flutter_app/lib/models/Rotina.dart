class Rotina{
  int id = 0;
  String nome ='';
  int prioridade =0;

  Rotina({
    required this.nome,
    required this.prioridade,
  });

  
  Map<String, dynamic> toMap() {
  return {
    'id': id,
    'nome': nome,
    'prioridade': prioridade,
  };
}
}


abstract class RotinaContract{
  static const String rotinaTable = 'rotina_table';
  static const String idColumn = 'id';
  static const String nomeColumn = 'nome';
  static const String prioridadeColumn = 'prioridade';
}


