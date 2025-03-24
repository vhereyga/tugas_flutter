import 'package:flutter/material.dart';
import 'dart:math';

class Teman {
  final String nama;
  final String deskripsi;
  final Color warna;

  Teman({required this.nama, required this.deskripsi, required this.warna});
}

class DaftarTeman extends StatelessWidget {
  DaftarTeman({super.key});

  final List<String> namaTeman = [
    'Waras Tri Wijaya',
    'Aji kia Ramadhani',
    'Adi tegar setiawan',
    'Jenniva Retno Nuryuansyah',
    'Dina Asritama Wulandari',
    'Muhammad Noviyanto',
    'Atik Setyaningsih',
    'Alfi Fadli',
    'Muhammad Zulfa',
    'Muhammad Amir',
    'Satria Abdul',
    'Sultan Syah',
    'Yola Aulia Wanergi',
    'Nabilah Junita Eka Putri',
    'Claudea Cahaya Cinta',
    'Amanda Aditama Nurani',
    'Dyah Purwaningsih',
    'Haffiant Resditya Akbar',
    'Devan Vidhel Azadan',
    'Maheswara Hani R.K.',
    'Afiq Muhammad Nur Marzuki',
    'Ilham Khoiri',
    'Nur Rahman Saleh',
    'Valen Purwaixna Saputra',
    'Elsa Oktawiyani',
    'Vhereyga Putra Pradana',
    'Febrian Maulana',
    'Muchamad Syarif Hidayatullah',
    'Raply Fediansyah',
    'Alif Akbar Andriyansyah',
    'Faizal Wiyatnodito',
    'Rizal Diaz Reihan Saputra',
    'Andri Khoirul Manaf',
    'Rafael Theo Santoso',
  ];

  final List<String> deskripsiRandom = [
    'Suka ngoding',
    'Pecinta kopi',
    'Gamer sejati',
    'Doyan traveling',
    'Suka film action',
    'Tukang rebahan',
    'Suka baca buku',
    'Foodie',
    'Hobi main basket',
    'Suka desain grafis',
  ];

  final List<Color> warnaAvatar = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.orange,
    Colors.cyan,
    Colors.pink,
    Colors.teal,
    Colors.brown,
    Colors.indigo,
  ];

  @override
  Widget build(BuildContext context) {
    final random = Random();

    List<Teman> daftarTeman =
        namaTeman.map((nama) {
          return Teman(
            nama: nama,
            deskripsi: deskripsiRandom[random.nextInt(deskripsiRandom.length)],
            warna: warnaAvatar[random.nextInt(warnaAvatar.length)],
          );
        }).toList();

    daftarTeman.shuffle(); // Mengacak urutan teman setiap kali layar dibuka

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Teman'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/profil');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: daftarTeman.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: daftarTeman[index].warna,
              child: Text(
                daftarTeman[index].nama[0], // Menampilkan inisial pertama
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(daftarTeman[index].nama),
            subtitle: Text(daftarTeman[index].deskripsi),
          );
        },
      ),
    );
  }
}
