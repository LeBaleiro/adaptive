import 'package:adaptive/custom_card/custom_button.dart';
import 'package:adaptive/custom_card/tag.dart';
import 'package:flutter/material.dart';

class TagFooter extends StatelessWidget {
  const TagFooter({super.key, required this.tagLabel});
  final String tagLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
