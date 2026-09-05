import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome To Home Page'),
            Text('Entendendo conceitos com Wifi Depuration Debugging '),
            Text('Contador: $_contador'),
            SizedBox(height:15),
            ElevatedButton(child:Text('Adicionar'), onPressed: (){
              debugPrint('TESTE111');
              setState((){
                _contador++;
              });
            }),
            ElevatedButton(child:Text('Zerar'), onPressed:(){
              debugPrint('ZERADO');
              setState((){
                _contador = 0;
              });
            })
          ],
        ),
      )
      );
  }
}