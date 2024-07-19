// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:adaptive/custom_dialog/custom_dialog.dart';
import 'package:adaptive/grid_ipsum.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Todas imagens',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Capturar imagem',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload_rounded),
            label: 'Enviar imagem',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => showCustomDialog(context),
      ),
      body: const GridIpsum(),
    );
  }
}
