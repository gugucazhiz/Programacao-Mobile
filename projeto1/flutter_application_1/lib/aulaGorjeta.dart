import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialAppHome());
}

class MaterialAppHome extends StatelessWidget {
  const MaterialAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Calcula Gorjeta",
      home: ScaffoldHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScaffoldHome extends StatelessWidget {
  const ScaffoldHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calcula Gorjeta",
                         style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //imagem
        Container(
          width: 220,
          height: 220,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Colors.green),
            image: DecorationImage(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCpelJ5OH-9zooVSif5szStNsH6Jo0nwKAdlgXgFp3WKamITA0BOw8GV0&s=10"))
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
          decoration:InputDecoration(
            hintText: "Digite Um valor",
            hintStyle: TextStyle(color: Colors.green),
            prefixIcon: Icon(Icons.monetization_on_outlined,color:Colors.green),
            
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2 , color: Colors.green),
              borderRadius: BorderRadius.circular(80)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width:2, color: Colors.green),
              borderRadius: BorderRadius.circular(80)
            ),
            fillColor: Colors.grey.shade200,
            filled:true
          ),
        )),
        //input
        //botao
        //texto
      ],
      )
    );
  }
}
