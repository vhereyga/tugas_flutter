import 'package:flutter/material.dart';

class ProfilSaya extends StatelessWidget {
  const ProfilSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Vhereyga Putra Pradana',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(child: GambarProfilDenganIkonEdit()),
    );
  }
}

class GambarProfilDenganIkonEdit extends StatelessWidget {
  const GambarProfilDenganIkonEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueAccent, width: 4),
                image: const DecorationImage(
                  image: AssetImage('assets/images/fotoku.jpg'),

                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: const Icon(Icons.edit, color: Colors.white, size: 24),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'Vhereyga Putra Pradana',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Mahasiswa Teknik Informatika',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
