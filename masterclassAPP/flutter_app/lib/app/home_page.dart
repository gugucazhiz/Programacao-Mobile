import 'package:flutter/material.dart';
import 'package:flutter_app/module/auth/screens/profile_page.dart';
import 'package:flutter_app/module/task/screens/task_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 0;
  int _selectedIndex = 0;
  
  final List<Widget> _pages =[
    TaskListPage(),
    ProfilePage(),
  ];


  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items:[
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Tarefas'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
      ],)
      );
  }
}


// Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Welcome To Home Page'),
//             Text('Entendendo conceitos com Wifi Depuration Debugging '),
//             Text('Contador: $_contador'),
//             SizedBox(height:15),
//             ElevatedButton(child:Text('Adicionar'), onPressed: (){
//               debugPrint('TESTE111');
//               setState((){
//                 _contador++;
//               });
//             }),
//             ElevatedButton(child:Text('Zerar'), onPressed:(){
//               debugPrint('ZERADO');
//               setState((){
//                 _contador = 0;
//               });
//             })
//           ],
//         ),
//       ),