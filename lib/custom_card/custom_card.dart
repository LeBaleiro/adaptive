import 'package:adaptive/custom_card/cards/taller_layout.dart';
import 'package:adaptive/custom_card/cards/wider_layout.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.imageUrl,
    required this.caption,
    required this.description,
    required this.tagLabel,
  });

  final String imageUrl;
  final ({String end, String start}) caption;
  final String description;
  final String tagLabel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMoreTallThanWide = constraints.maxHeight > constraints.maxWidth;
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: isMoreTallThanWide
              ? TallerLayout(
                  imageUrl: imageUrl,
                  description: description,
                  tagLabel: tagLabel,
                  caption: caption)
              : WiderLayout(
                  imageUrl: imageUrl,
                  description: description,
                  tagLabel: tagLabel,
                  caption: caption,
                ),
        );
      },
    );
  }
}
