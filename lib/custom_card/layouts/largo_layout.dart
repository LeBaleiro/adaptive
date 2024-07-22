import 'package:adaptive/custom_card/componentes/conteudo_card.dart';
import 'package:adaptive/custom_card/componentes/imagem_card.dart';
import 'package:flutter/material.dart';

class LargoLayout extends StatelessWidget {
  const LargoLayout({
    super.key,
    required this.imageUrl,
    required this.caption,
    required this.description,
    required this.tagLabel,
  });

  final String imageUrl;
  final String caption;
  final String description;
  final String tagLabel;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ImagemCard(url: imageUrl),
          ),
          Expanded(
            flex: 4,
            child: ConteudoCard(
              titulo: caption,
              descricao: description,
              textoTag: tagLabel,
            ),
          ),
        ],
      ),
    );
  }
}
