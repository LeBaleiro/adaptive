import 'package:adaptive/custom_card/componentes/titulo.dart';
import 'package:adaptive/custom_card/componentes/description.dart';
import 'package:adaptive/custom_card/componentes/tag_footer.dart';
import 'package:flutter/material.dart';

class ConteudoCard extends StatelessWidget {
  const ConteudoCard({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.textoTag,
  });

  final String titulo;
  final String descricao;
  final String textoTag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Titulo(titulo),
          Descricao(descricao),
          TagFooter(textoTag: textoTag),
        ],
      ),
    );
  }
}
