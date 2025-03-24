import 'package:flutter/material.dart';
import 'daftar_teman.dart';
import 'profil_saya.dart';
import 'login_form.dart';

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
      home: const LoginForm(),
      routes: {
        '/login': (context) => const LoginForm(),
        '/profil': (context) => const ProfilSaya(),
        '/daftarTeman': (context) => DaftarTeman(),
      },
    );
  }
}
