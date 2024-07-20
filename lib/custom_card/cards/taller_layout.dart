import 'package:adaptive/custom_card/card_content.dart';
import 'package:adaptive/custom_card/card_image.dart';
import 'package:flutter/material.dart';

class TallerLayout extends StatelessWidget {
  const TallerLayout({
    super.key,
    required this.imageUrl,
    required this.description,
    required this.tagLabel,
    required this.caption,
  });

  final String imageUrl;
  final ({String end, String start}) caption;
  final String description;
  final String tagLabel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CardImage(url: imageUrl),
          CardContent(
            caption: caption,
            description: description,
            tagLabel: tagLabel,
          )
        ],
      ),
    );
  }
}
