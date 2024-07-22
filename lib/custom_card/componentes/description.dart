import 'package:flutter/material.dart';

class Descricao extends StatelessWidget {
  const Descricao(this.description, {super.key});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        description,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
