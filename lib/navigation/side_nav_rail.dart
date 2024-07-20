import 'package:adaptive/navigation/navitation_items.dart';
import 'package:flutter/material.dart';

class SideNavRail extends StatelessWidget {
  const SideNavRail({
    super.key,
    required this.onItemSelected,
    required this.selectedIndex,
  });

  final Function(int index) onItemSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: onItemSelected,
      labelType: NavigationRailLabelType.all,
      destinations: navigationItems
          .map((e) => NavigationRailDestination(
                icon: Icon(e.icon),
                label: Text(e.label),
              ))
          .toList(),
    );
  }
}
