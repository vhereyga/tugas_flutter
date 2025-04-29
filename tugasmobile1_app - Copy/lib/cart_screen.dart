import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, required this.jumlah, required this.nama});

  final String jumlah;
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('cart screen')),
      body: Text("$nama jumlah barang $jumlah"),
    );
  }
}
