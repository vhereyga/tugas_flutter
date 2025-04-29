import 'package:flutter/material.dart';
import 'login_screen.dart';

class VhereygaScreen extends StatefulWidget {
  const VhereygaScreen({super.key});

  @override
  State<VhereygaScreen> createState() => _VhereygaScreenState();
}

class _VhereygaScreenState extends State<VhereygaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vhereyga profile'),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: const Color.fromARGB(255, 186, 186, 186),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('NIM : 230103080'),
            Text('ALAMAT : jl kenanga 1 no 10 Palur'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('logout'),
            ),
          ],
        ),
      ),
    );
  }
}
