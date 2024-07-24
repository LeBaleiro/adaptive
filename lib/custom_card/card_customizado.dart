import 'package:adaptive/custom_card/layouts/alto_layout.dart';
import 'package:adaptive/custom_card/layouts/largo_layout.dart';
import 'package:flutter/material.dart';

class CardCustomizado extends StatelessWidget {
  const CardCustomizado({
    super.key,
    required this.urlImagem,
    required this.titulo,
    required this.descricao,
    required this.textoTag,
  });

  final String urlImagem;
  final String titulo;
  final String descricao;
  final String textoTag;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        final isMoreTallThanWide = constraints.maxHeight > constraints.maxWidth;
        if (isMoreTallThanWide) {
          return AltoLayout(
            imageUrl: urlImagem,
            caption: titulo,
            description: descricao,
            tagLabel: textoTag,
          );
        } else {
          return LargoLayout(
            imageUrl: urlImagem,
            caption: titulo,
            description: descricao,
            tagLabel: textoTag,
          );
        }
      }),
    );
  }
}
