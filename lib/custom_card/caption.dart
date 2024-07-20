import 'package:flutter/material.dart';

class Caption extends StatelessWidget {
  const Caption(this.caption, {super.key});
  final String caption;

  List<String> get captionSplitted => caption.split(' ');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
          children: captionSplitted.map(
            (e) {
              final index = captionSplitted.indexOf(e);
              return TextSpan(
                text: '$e ',
                style: TextStyle(
                  color: index.isEven ? Colors.red : Colors.black,
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
