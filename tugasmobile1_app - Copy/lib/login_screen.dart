import 'package:flutter/material.dart';
import 'package:tugasmobile1_app/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login screen')),
      body: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreens()),
          );
        },
        child: Text('login'),
      ),
    );
  }
}
