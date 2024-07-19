import 'package:adaptive/custom_image.dart';
import 'package:flutter/material.dart';

class GridIpsum extends StatelessWidget {
  const GridIpsum({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 840),
        child: GridView.builder(
          itemCount: 30,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            return CustomImage(
              url: 'https://picsum.photos/id/${index + 1}/500/500',
            );
          },
        ),
      ),
    );
  }
}
