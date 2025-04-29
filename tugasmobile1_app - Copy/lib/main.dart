import 'package:flutter/material.dart';
import 'daftar_teman.dart';
import 'profil_saya.dart';

import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/profil': (context) => const ProfilSaya(),
        '/daftarTeman': (context) => DaftarTeman(),
      },
    );
  }
}
