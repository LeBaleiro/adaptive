import 'package:adaptive/custom_image.dart';
import 'package:flutter/material.dart';

class MinhaListaIpsum extends StatelessWidget {
  const MinhaListaIpsum({super.key});

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
