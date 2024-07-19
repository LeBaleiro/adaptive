import 'package:adaptive/custom_image.dart';
import 'package:flutter/material.dart';

class ListaDoSonic extends StatelessWidget {
  const ListaDoSonic({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomImage(
          url:
              'https://uploads.jovemnerd.com.br/wp-content/uploads/2022/05/sonic_feio_filme_disney__oyc4231-760x428.jpg',
        ),
        CustomImage(
          url:
              'https://www.adrenaline.com.br/wp-content/uploads/2024/04/24_04_02_080126-912x569.jpg',
        ),
        CustomImage(
          url:
              'https://uploads.jovemnerd.com.br/wp-content/uploads/2022/05/sonic_feio_tico_teco__jnixc508.jpg',
        ),
        CustomImage(
          url:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsujNPMkPvrHGch2jIZ_jPipGxVqwe886syCnYPWnDBg7gQ5XQK4hlxor5Dfg6_8cUeaY&usqp=CAU',
        ),
      ],
    );
  }
}
