import 'package:adaptive/custom_card/custom_card.dart';
import 'package:adaptive/image_list/custom_image.dart';
import 'package:adaptive/new_page.dart';
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
            return GestureDetector(
              child: CustomImage(
                url: 'https://picsum.photos/id/${index + 1}/500/500',
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewPage(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
