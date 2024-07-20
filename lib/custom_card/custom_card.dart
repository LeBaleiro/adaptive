import 'package:adaptive/custom_card/caption.dart';
import 'package:adaptive/custom_card/card_image.dart';
import 'package:adaptive/custom_card/description.dart';
import 'package:adaptive/custom_card/tag_footer.dart';
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
  final String caption;
  final String description;
  final String tagLabel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMoreTallThanWide =
              constraints.maxHeight > constraints.maxWidth;
          if (isMoreTallThanWide) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CardImage(url: imageUrl),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Caption(caption),
                      Description(description),
                      TagFooter(tagLabel: tagLabel),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CardImage(url: imageUrl),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Caption(caption),
                      Description(description),
                      TagFooter(tagLabel: tagLabel),
                    ],
                  ),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
