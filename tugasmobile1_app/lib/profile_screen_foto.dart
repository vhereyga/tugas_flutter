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
        backgroundColor: isDarkTheme ? Colors.grey[900] : Colors.blue,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto Profil tetap ada
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/fotoku.jpg'),
              ),
              const SizedBox(height: 20),

              // Teks Login Berhasil
              Text(
                'Login Berhasil',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: isDarkTheme ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 8),

              // Email
              Text(
                widget.email,
                style: TextStyle(
                  fontSize: 18,
                  color: isDarkTheme ? Colors.white70 : Colors.grey[700],
                ),
              ),
              const SizedBox(height: 30),

              // Tombol ke Home Screen
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreens()),
                    );
                  },
                  icon: Icon(Icons.home),
                  label: Text('Home Screen'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isDarkTheme ? Colors.grey[800] : Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
