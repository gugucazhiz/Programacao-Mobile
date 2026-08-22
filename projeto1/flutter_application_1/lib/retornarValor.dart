import 'package:flutter/material.dart';

void main(){
  runApp(WidgetPrincipal()); 
}

class WidgetPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Cacluladora", 
      initialRoute: '/',
      routes: {
        '/': (context) =>  ScaffoldHome(),
        '/preenche':(context) =>  ScaffoldPreenche()
      },
    );
  }
}

class ScaffoldHome extends StatelessWidget{
  ScaffoldHome({super.key});
  late String resultado;
  late String resultadoA;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
        backgroundColor: Colors.red
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("0"),
            ElevatedButton(
              onPressed: () async { 
              resultado = await Navigator.pushNamed(
                context,
                "/preenche",
              ) as String;
              print("valor de A: $resultadoA! Resultado B $resultado");
              },
              child: Text("Informar X")
              )
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("0"),
              ElevatedButton(
                onPressed: () async{
                  resultadoA = await Navigator.pushNamed(
                    context, "/preenche",
                    ) as String;
                  print("valor de A: $resultadoA! resultado B $resultado");
                  },
                child: Text("Informar Y")
              )
            ]
          ),
         ]
        )   
      )
    );
  }
}

class ScaffoldPreenche extends StatelessWidget{
  ScaffoldPreenche({super.key});
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Preenche valores"),),
      body: Column(
        children: [
          Row(
            children: [
              Text("Set X:"),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: controller,
                decoration:  InputDecoration(border: OutlineInputBorder()),
              )

              )
            ],
          ),
          ElevatedButton(onPressed:(){
            Navigator.pop(context,controller.text);
          }, child:Text("Ok")),
        ],
      ),
    );
  }
}