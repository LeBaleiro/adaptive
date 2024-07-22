import 'package:adaptive/custom_dialog/dialog_actions.dart';
import 'package:adaptive/custom_dialog/full_screen_dialog_title.dart';
import 'package:adaptive/custom_dialog/simple_dialog_title.dart';
import 'package:flutter/material.dart';

// Future<void> showCustomDialog(BuildContext context) async {
//   return showDialog(
//     context: context,
//     builder: (context) {
//       final showFullScreenDialog = MediaQuery.sizeOf(context).width < 600;
//       if (showFullScreenDialog) {
//         return const Dialog.fullscreen(
//           child: DialogContent(),
//         );
//       } else {
//         return Dialog(
//           child: ConstrainedBox(
//             constraints: const BoxConstraints(maxWidth: 400),
//             child: const DialogContent(),
//           ),
//         );
//       }
//     },
//   );
// }

Future<void> showCustomDialog(BuildContext context) async {
  showDialog(
    context: context,
    builder: (context) {
      final showFullScreenDialog = MediaQuery.sizeOf(context).width < 600;
      if (showFullScreenDialog) {
        return const Dialog.fullscreen(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              FullScreenDialogTitle(),
              DialogContent(),
            ],
          ),
        );
      } else {
        return Dialog(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SimpleDialogTitle(),
                DialogContent(),
                DialogActions(),
              ],
            ),
          ),
        );
      }
    },
  );
}

class DialogContent extends StatelessWidget {
  const DialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const CustomTextField(label: 'Título do álbum'),
          const SizedBox(height: 16),
          const CustomTextField(label: 'Descrição'),
          const SizedBox(height: 24),
          const Text(
            'Compartilhado com',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ListView.separated(
            itemCount: namesList.length,
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 7),
            itemBuilder: (context, index) => UserTile(
              name: namesList[index],
              imageUrl: 'https://i.pravatar.cc/300?img=$index',
            ),
          ),
        ],
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  final String name;
  final String imageUrl;

  const UserTile({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
        const SizedBox(width: 5),
        Text(name),
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
    );
  }
}

const namesList = [
  'Alejandro Ortega',
  'Marty Reyes',
  'Ines Ortega Reyes',
  'Pia Hana Carmen',
  'Carmen'
];
