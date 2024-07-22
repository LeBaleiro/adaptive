import 'package:adaptive/custom_card/componentes/botao_icone_customizado.dart';
import 'package:adaptive/custom_card/componentes/tag.dart';
import 'package:flutter/material.dart';

class TagFooter extends StatelessWidget {
  const TagFooter({super.key, required this.textoTag});
  final String textoTag;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Tag(label: textoTag),
        const SizedBox(width: 10),
        Row(
          children: <Widget>[
            BotaoIconeCustomizado(
              iconData: Icons.more_horiz,
              onTap: () {},
            ),
            const SizedBox(width: 5),
            BotaoIconeCustomizado(
              iconData: Icons.image,
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
