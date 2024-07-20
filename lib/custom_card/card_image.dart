import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key, required this.url});

  final String url;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      child: Image.network(
        url,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
