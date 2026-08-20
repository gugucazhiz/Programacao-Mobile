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
        '/': (context) => const ScaffoldHome(),
        '/second':(context) => const ScaffoldPreenche()
      },
    );
  }
}

class ScaffoldHome extends StatelessWidget{
  const ScaffoldHome({super.key});
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
              onPressed: () => Navigator.pushNamed(context, "/preenche"),
              child: Text("Informar X")
              )
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("0"),
              ElevatedButton(
                onPressed: () { 
                  Navigator.pushNamed(
                    context, "/preenche",
                    arguments: "Exemple",
                    );
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
  const ScaffoldPreenche({super.key});
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
                decoration:  InputDecoration(border: OutlineInputBorder()),
              )

              )
            ],
          ),
          ElevatedButton(onPressed: null, child:Text("Ok")),
        ],
      ),
    );
  }
}