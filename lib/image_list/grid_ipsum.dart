import 'package:adaptive/custom_card/custom_card.dart';
import 'package:adaptive/image_list/custom_image.dart';
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
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Dialog(
                        child: CustomCard(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrkp-qvrUZpXsxTEAGhN_3yOLWyQ7zFGpT0w&s',
                      caption: 'EASTERN TIMES',
                      description:
                          'The Most Complicated Recipe You\'ll Still Want To Make',
                      tagLabel: 'Top News · 1 hour ago',
                    ));
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
