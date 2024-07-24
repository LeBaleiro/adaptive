// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui' as ui;

import 'package:adaptive/custom_dialog/custom_dialog.dart';
import 'package:adaptive/image_list/grid_ipsum.dart';
import 'package:adaptive/navigation/bottom_nav_bar.dart';
import 'package:adaptive/navigation/side_nav_rail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexSelected = 0;

  void onItemSelected(int index) {
    setState(() => indexSelected = index);
  }

  /// Não faça isso:
  // void handleSizeChange(Size size) {
  //   final orientations = <DeviceOrientation>[];
  //   orientations.addAll([
  //     DeviceOrientation.portraitUp,
  //     DeviceOrientation.portraitDown,
  //   ]);
  //   bool isCompact = size.shortestSide < 600 && size != Size.zero;
  //   if (!isCompact) {
  //     orientations.addAll([
  //       DeviceOrientation.landscapeLeft,
  //       DeviceOrientation.landscapeRight,
  //     ]);
  //   }
  //   SystemChrome.setPreferredOrientations(orientations);
  // }

  /// Prefira deixar liberada todas as orientações, mas caso precise travar, faça isso:
  ui.Display get display => ui.PlatformDispatcher.instance.displays.first;

  void handleSizeChange(Size size) {
    final orientations = <DeviceOrientation>[];
    orientations.addAll([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    bool isCompact = display.size.shortestSide / display.devicePixelRatio < 600;
    if (!isCompact) {
      orientations.addAll([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    }
    SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    handleSizeChange(size);
    final useSideNavRail = MediaQuery.sizeOf(context).width >= 600;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      bottomNavigationBar: useSideNavRail
          ? null
          : BottomNavBar(
              onItemSelected: onItemSelected,
              selectedIndex: indexSelected,
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => showCustomDialog(context),
      ),
      body: Row(
        children: [
          if (useSideNavRail)
            SideNavRail(
              onItemSelected: onItemSelected,
              selectedIndex: indexSelected,
            ),
          const Expanded(child: GridIpsum()),
        ],
      ),
    );
  }
}
