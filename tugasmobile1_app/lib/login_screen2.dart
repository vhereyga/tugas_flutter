import 'package:flutter/material.dart';
import 'profile_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Login')),
      body: Column(
        children: [
          TextField(controller: emailController),
          TextField(controller: passwordController, obscureText: true),
          ElevatedButton(
            onPressed: () {
              String email = emailController.text;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(email: email),
                ),
              );
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
