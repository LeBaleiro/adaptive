import 'package:flutter/material.dart';

class DialogContent extends StatelessWidget {
  const DialogContent({super.key, required this.photo});
  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LayoutBuilder(builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxWidth,
            child: Image.network(photo.url),
          );
        }),
        // GeneratedMetadataCard(
        //   loading: false,
        //   metadata: photo,
        // )
      ],
    );
  }
}

class Photo {
  final String url;
  final String info;

  Photo({required this.url, required this.info});
}
