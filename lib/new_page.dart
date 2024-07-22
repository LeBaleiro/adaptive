import 'package:adaptive/custom_card/card_customizado.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CardCustomizado(
          urlImagem:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHSFwfu7uauNUjM2PHs72gcra1TbXhkp1Nqw&s',
          titulo: 'EASTERN TIMES',
          descricao: 'The Most Complicated Recipe You\'ll Still Want To Make',
          textoTag: 'Top News · 1 hour ago',
        ),
      ),
    );
  }
}
