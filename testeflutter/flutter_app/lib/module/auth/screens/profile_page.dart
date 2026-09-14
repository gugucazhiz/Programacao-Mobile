import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {



  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/107414595?v=4'),
            ),
            SizedBox(height:16),
            Text('gugucazhiz',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 8,),
            Text("Desenvolvedor Backend & Mobile",
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)
            ),
            SizedBox(height: 8,),
            Text("Email: gustavinho@gmail",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)
            ),
          ],
        ),)
    );
  }
}





//requisição usando stateless
//o problema dela e que pode ser feito varios request
//ja que o build pode ser chamado varias vezes


// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   Future<void> buscarClima() async{
//     final res = await http.get(
//       Uri.parse('https://api.hgbrasil.com/weather/?format=json&cid=BRXX0198'),
//     );
//   }
  

//   @override
//   Widget build(BuildContext context) {
//     buscarClima();
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