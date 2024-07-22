import 'package:flutter/material.dart';

class ImagemCard extends StatelessWidget {
  const ImagemCard({super.key, required this.url});

  final String url;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
