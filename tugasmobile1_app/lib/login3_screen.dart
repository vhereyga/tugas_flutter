import 'package:flutter/material.dart';
import 'profile_screen.dart';

class Login3Screen extends StatefulWidget {
  const Login3Screen({super.key});

  @override
  State<Login3Screen> createState() => _Login3ScreenState();
}

class _Login3ScreenState extends State<Login3Screen> {
  bool passwordtertutup = true;
  final TextEditingController emailController = TextEditingController();

  tampilkanPassword() {
    setState(() {
      passwordtertutup = !passwordtertutup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: passwordtertutup ? Colors.red : Colors.yellow,
      appBar: AppBar(title: Text("Menu Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: passwordtertutup,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: tampilkanPassword,
                  icon:
                      passwordtertutup
                          ? Icon(Icons.visibility, color: Colors.yellow)
                          : Icon(Icons.visibility_off, color: Colors.red),
                ),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ProfileScreen(email: emailController.text),
                  ),
                );
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
