import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  const Titulo(this.caption, {super.key});
  final String caption;

  List<String> get textoDividido => caption.split(' ');

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
          children: textoDividido.map(
            (e) {
              final index = textoDividido.indexOf(e);
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
