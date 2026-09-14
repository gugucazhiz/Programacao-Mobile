import 'package:flutter/material.dart';


class TaskListPage extends StatefulWidget {
  TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  List<String> _tarefas = [
    'Tarefa 1',
    'Tarefa 2',
    'Tarefa 3',
  ];
  int _contador =3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _tarefas.length,
        itemBuilder:(context, index) {
          return ListTile(
            leading: Icon(Icons.label),
            title: Text(_tarefas[index]),
            // onTap: () {
            //   print('Tarefa selecionada: ${_tarefas[index]}');
            // }
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        child: Text("LELE"),
        onPressed: () {
          setState(() {
            _contador++;
            _tarefas.add("Tarefa ${_contador}");
          });
        },
      ),
    );
  }
}