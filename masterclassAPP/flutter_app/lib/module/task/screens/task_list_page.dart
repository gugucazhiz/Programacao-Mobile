import 'package:flutter/material.dart';

class TaskListPage extends StatefulWidget {
  TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Form(
        key:_formKey,
        child: Column(children: <Widget>[
          TextFormField(
            validator: (value){
              if(value == null || value.isEmpty){
                return 'please enter some text';
              }
              return null;
            },
          ),
        ],
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(_formKey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            }
          }
        )
    );
  }
}