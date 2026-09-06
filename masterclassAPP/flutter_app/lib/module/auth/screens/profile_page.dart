import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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