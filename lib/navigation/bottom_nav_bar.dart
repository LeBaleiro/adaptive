import 'package:adaptive/navigation/navigation_items.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.onItemSelected,
    required this.selectedIndex,
  });

  final Function(int index) onItemSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemSelected,
      items: navigationItems
          .map((e) => BottomNavigationBarItem(
                icon: Icon(e.icon),
                label: e.label,
              ))
          .toList(),
    );
  }
}
