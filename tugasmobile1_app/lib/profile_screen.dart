import 'package:flutter/material.dart';
import 'home_screen.dart';

class ProfileScreen extends StatefulWidget {
  final String email;

  const ProfileScreen({super.key, required this.email});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkTheme ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: isDarkTheme ? Colors.grey[850] : Colors.blue,
        actions: [
          IconButton(
            icon: Icon(isDarkTheme ? Icons.dark_mode : Icons.light_mode),
            onPressed: () {
              setState(() {
                isDarkTheme = !isDarkTheme;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Berhasil',
              style: TextStyle(
                fontSize: 24,
                color: isDarkTheme ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              widget.email,
              style: TextStyle(
                fontSize: 18,
                color: isDarkTheme ? Colors.white70 : Colors.grey[700],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreens()),
                );
              },
              child: Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
