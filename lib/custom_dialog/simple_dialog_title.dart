import 'package:flutter/material.dart';

class SimpleDialogTitle extends StatelessWidget {
  const SimpleDialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16),
      child: Text(
        'Criar um novo álbum',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
