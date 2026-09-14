import 'dart:convert';
import 'dart:io';
import 'package:flutter_app/models/Noticia.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NoticiaPage extends StatefulWidget {
  const NoticiaPage({super.key});

  @override
  State<NoticiaPage> createState() => _NoticiaPage();
}

class _NoticiaPage extends State<NoticiaPage> {
  List<Noticia> noticias = [];

  @override
  void initState(){
    super.initState();

    inicializar();
  }

  Future<void> inicializar() async{
    await dotenv.load(fileName: ".env");
    buscarNoticias();
  }

  Future<void> buscarNoticias() async{
    final headers = <String, String>{
      'x-api-key': dotenv.env['senha'] ?? '',
    };

    try{
      final res = await http.get(
        Uri.parse('https://api.freenewsapi.io/v1/news?country=br'),headers: headers
      );

      if(res.statusCode != HttpStatus.ok){
        throw "Erro na requisição: ${res.body}";
      }
      else{
        // final dados = jsonDecode(res.body);
        // print (dados);

        final dados = noticiasFromJson(res.body);

        setState(() {
          noticias = dados.data;
        });
      }

    }catch(e){
      print("Erro: $e");
    }
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index){
          final noticia = noticias[index];

          return Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8),
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                noticia.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                const SizedBox(height: 8),
                Text(noticia.publisher),
                Text(noticia.publishedAt)
              ],
            ),
          );
          // return ListTile(
          //   title: Text(noticia.title),
          //   subtitle: Text(noticia.publisher),

          // );
        }
      )
    );
  }
}





//requisição usando stateless
//o problema dela e que pode ser feito varios request
//ja que o build pode ser chamado varias vezes


// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class NoticiaPage extends StatelessWidget {
//   const NoticiaPage({super.key});

//   Future<void> buscarNoticias() async{
//     final res = await http.get(
//       Uri.parse('https://api.hgbrasil.com/weather/?format=json&cid=BRXX0198'),
//     );
//   }
  

//   @override
//   Widget build(BuildContext context) {
//     buscarNoticias();
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(height: 30),
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/107414595?v=4'),
//             ),
//             SizedBox(height:16),
//             Text('gugucazhiz',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
//             ),
//             SizedBox(height: 8,),
//             Text("Desenvolvedor Backend & Mobile",
//               style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)
//             ),
//             SizedBox(height: 8,),
//             Text("Email: gustavinho@gmail",
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
//             ),
//           ],
//         ),)
//     );
//   }
// }