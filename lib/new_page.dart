import 'package:adaptive/custom_card/custom_card.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomCard(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrkp-qvrUZpXsxTEAGhN_3yOLWyQ7zFGpT0w&s',
            caption: 'EASTERN TIMES',
            description:
                'The Most Complicated Recipe You\'ll Still Want To Make',
            tagLabel: 'Top News · 1 hour ago',
          ),
        ],
      ),
    );
  }
}
