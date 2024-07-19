import 'package:flutter/material.dart';

class FullScreenDialogTitle extends StatelessWidget {
  const FullScreenDialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0XFFF2EDF4),
      centerTitle: false,
      leading: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        TextButton(
          child: const Text('Salvar'),
          onPressed: () {},
        )
      ],
      title: Text(
        'Criar um novo álbum',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
