import 'package:flutter/material.dart';

class NavigationItem {
  const NavigationItem(this.icon, this.label);
  final IconData icon;
  final String label;
}

const List<NavigationItem> navigationItems = <NavigationItem>[
  NavigationItem(Icons.image, 'Todas imagens'),
  NavigationItem(Icons.camera_alt, 'Capturar imagem'),
  NavigationItem(Icons.upload_rounded, 'Enviar imagem'),
];
