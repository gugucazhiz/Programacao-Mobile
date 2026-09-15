import 'package:flutter/material.dart';


class TaskListPage extends StatefulWidget {
  TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  List<String> _tarefas = [];
  int _contador =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _tarefas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.label),
            title: Text(_tarefas[index]),
            // onTap: () {
            //   print('Tarefa selecionada: ${_tarefas[index]}');
            // }
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: Text("+"),
            onPressed: () {
              setState(() {
                if(_contador < 12){
                _contador++;
                _tarefas.add("Tarefa ${_contador}");
                }
              });
            },
          ),
          SizedBox(width: 40,),
          ElevatedButton(
            child: Text("-"),
            onPressed:(){
              setState(() {
                if(_contador > 0){
                  _tarefas.removeLast();
                  _contador--;
                }
              });
            }
            ,)
        ],
      ),

    );
  }
}