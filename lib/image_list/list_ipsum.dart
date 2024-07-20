import 'package:adaptive/image_list/custom_image.dart';
import 'package:flutter/material.dart';

class ListaIpsum extends StatelessWidget {
  const ListaIpsum({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) {
        return CustomImage(
          url: 'https://picsum.photos/id/${index + 1}/500/500',
        );
      },
    );
  }
}
