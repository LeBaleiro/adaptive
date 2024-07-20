import 'package:flutter/material.dart';

class Caption extends StatelessWidget {
  const Caption({super.key, required this.start, required this.end});
  final String start;
  final String end;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
              text: start,
              style: const TextStyle(
                color: Colors.red,
              )),
          TextSpan(
            text: end,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
