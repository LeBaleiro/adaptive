import 'package:adaptive/custom_card/caption.dart';
import 'package:adaptive/custom_card/custom_button.dart';
import 'package:adaptive/custom_card/description.dart';
import 'package:adaptive/custom_card/tag.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
    required this.caption,
    required this.description,
    required this.tagLabel,
  });

  final ({String end, String start}) caption;
  final String description;
  final String tagLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Caption(start: caption.start, end: caption.end),
          const SizedBox(height: 10.0),
          Description(description),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Tag(label: tagLabel),
              const SizedBox(width: 10),
              Row(
                children: <Widget>[
                  CustomIconButton(
                    iconData: Icons.more_horiz,
                    onTap: () {},
                  ),
                  const SizedBox(width: 5),
                  CustomIconButton(
                    iconData: Icons.image,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
