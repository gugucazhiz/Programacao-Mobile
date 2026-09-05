import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final res = await http.get(
    Uri.parse(
      'http://api.hgbrasil.com/finance/quotations?key=<suakey>',
    ),
  );

  if (res.statusCode != HttpStatus.ok) {
    throw 'Erro de conexão';
  }
}
