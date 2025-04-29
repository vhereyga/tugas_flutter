import 'package:flutter/material.dart';
import 'vhereyga_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('halaman login')),
      body: Column(
        children: [
          TextField(),
          TextField(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VhereygaScreen()),
              );
            },
            child: Text('login'),
          ),
        ],
      ),
    );
  }
}
