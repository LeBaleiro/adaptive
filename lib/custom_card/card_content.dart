import 'package:adaptive/custom_card/caption.dart';
import 'package:adaptive/custom_card/description.dart';
import 'package:adaptive/custom_card/tag_footer.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
    required this.caption,
    required this.description,
    required this.tagLabel,
  });

  final String caption;
  final String description;
  final String tagLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Caption(caption),
        Description(description),
        TagFooter(tagLabel: tagLabel),
      ],
    );
  }
}
