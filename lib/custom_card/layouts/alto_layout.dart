import 'package:adaptive/custom_card/componentes/conteudo_card.dart';
import 'package:adaptive/custom_card/componentes/imagem_card.dart';
import 'package:flutter/material.dart';

class AltoLayout extends StatelessWidget {
  const AltoLayout({
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: ImagemCard(url: imageUrl),
        ),
        ConteudoCard(
          titulo: caption,
          descricao: description,
          textoTag: tagLabel,
        ),
      ],
    );
  }
}
